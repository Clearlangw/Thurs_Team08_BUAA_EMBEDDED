/*********************************************************************
* Software License Agreement (BSD License)
* 
*  Copyright (c) 2017-2020, Waterplus http://www.6-robot.com
*  All rights reserved.
* 
*  Redistribution and use in source and binary forms, with or without
*  modification, are permitted provided that the following conditions
*  are met:
* 
*   * Redistributions of source code must retain the above copyright
*     notice, this list of conditions and the following disclaimer.
*   * Redistributions in binary form must reproduce the above
*     copyright notice, this list of conditions and the following
*     disclaimer in the documentation and/or other materials provided
*     with the distribution.
*   * Neither the name of the WaterPlus nor the names of its
*     contributors may be used to endorse or promote products derived
*     from this software without specific prior written permission.
* 
*  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
*  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
*  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
*  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
*  FOOTPRINTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
*  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
*  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
*  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
*  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
*  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
*  POSSIBILITY OF SUCH DAMAGE.
*********************************************************************/
/* @author Zhang Wanjie                                             */

#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <tf/transform_listener.h>
#include <visualization_msgs/Marker.h>
#include <waterplus_map_tools/Waypoint.h>
#include <waterplus_map_tools/GetNumOfWaypoints.h>
#include <waterplus_map_tools/GetWaypointByIndex.h>
#include <waterplus_map_tools/GetWaypointByName.h>
#include <sensor_msgs/JointState.h>
#include <string>
#include "std_msgs/String.h"

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

static ros::Publisher behaviors_pub;
static std_msgs::String behavior_msg;

int state = 1;
void GrabResultCB(const std_msgs::String::ConstPtr &msg)
{
    ROS_WARN("[GrabResult] %s", msg->data.c_str());
    if (strcmp(msg->data.c_str(), "done")==0)
    {
        state = 0;
    }
}

//服务模式
int main(int argc, char** argv)
{
    ros::init(argc, argv, "service_grab");

    ros::NodeHandle nh;
    ros::ServiceClient cliGetNum = nh.serviceClient<waterplus_map_tools::GetNumOfWaypoints>("waterplus/get_num_waypoint");
    ros::ServiceClient cliGetWPIndex = nh.serviceClient<waterplus_map_tools::GetWaypointByIndex>("waterplus/get_waypoint_index");
    ros::ServiceClient cliGetWPName = nh.serviceClient<waterplus_map_tools::GetWaypointByName>("waterplus/get_waypoint_name");

     ros::Publisher mani_ctrl_pub = nh.advertise<sensor_msgs::JointState>("/wpb_home/mani_ctrl", 30);
    sensor_msgs::JointState ctrl_msg;
    
  ros::NodeHandle n_param("~");
    sleep(1);
    std::string target1;
    double x,y,w;
    double de = 0;
  
    n_param.param<std::string>("src", target1, "");
    // ros::param::get("x",x);
    // ros::param::get("y",y);
    // ros::param::get("w",w);
    //   n_param.param<double>("x", &x, &de);
    //    n_param.param<double>("y", &y, &de);
    //    n_param.param<double>("w", &w, &de);
      
    ///////////////////////////////////////////////////////////////////////////////////
    waterplus_map_tools::GetNumOfWaypoints srvNum;
    while (ros::ok()) {
        if (cliGetNum.call(srvNum))
        {
            ROS_INFO("Num_wp = %d", (int)srvNum.response.num);
            break;
        }
        else
        {
            ROS_ERROR("Failed to call service get_num_waypoints");
            sleep(1);
        }
    }
    

    waterplus_map_tools::GetWaypointByIndex srvI;
    for(int i=0;i<srvNum.response.num;i++)
    {
        srvI.request.index = i;
        if (cliGetWPIndex.call(srvI))
        {
            std::string name = srvI.response.name;
            float x = srvI.response.pose.position.x;
            float y = srvI.response.pose.position.y;
            ROS_INFO("Get_wp_index: name = %s (%.2f,%.2f)", name.c_str(),x,y);
        }
        else
        {
            ROS_ERROR("Failed to call service get_wp_index");
        }
    }

    MoveBaseClient ac("move_base", true);

    while(!ac.waitForServer(ros::Duration(5.0)))
    {
        if(!ros::ok())
            break;
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    int nWPIndex = 0;
    int nNumOfWaypoints = 0;
    move_base_msgs::MoveBaseGoal goal;
    srvI.request.index = nWPIndex;

    if (cliGetNum.call(srvNum))
    {
        ROS_INFO("Num_wp = %ld", (long int)srvNum.response.num);
        nNumOfWaypoints = (int)srvNum.response.num;
    }
    else
    {
        ROS_ERROR("Failed to call service get_num_waypoint");
    }

    // search destination name
    while(1) {
        if (cliGetWPIndex.call(srvI))
        {
            std::string name = srvI.response.name;
            if (name.compare(target1) != 0)
            {
                nWPIndex ++;
                if (nWPIndex >= nNumOfWaypoints) {
                    nWPIndex = 0;
                }
                srvI.request.index = nWPIndex;
                continue;
            }
            float x = srvI.response.pose.position.x;
            float y = srvI.response.pose.position.y;
            ROS_INFO("Get_wp_index: name = %s (%.2f,%.2f)", name.c_str(),x,y);
            break;
        }
        else
        {
            ROS_ERROR("Failed to call service get_wp_index");
            return 0;
        }
    }
    
     //ROS_INFO("Go to the "+target1);
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose = srvI.response.pose;
    ac.sendGoal(goal);
    ac.waitForResult();

    // if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    // {
    //     ROS_INFO("Arrived at the "+target1);
    // }
    // else
    //     ROS_INFO("Failed to get to the "+target2);


    // start grab
    behaviors_pub = nh.advertise<std_msgs::String>("/wpb_home/behaviors", 30);
    ros::Subscriber res_sub = nh.subscribe("/wpb_home/grab_result", 30, GrabResultCB);

    ROS_WARN("[main] wpb_home_grab_client");
    sleep(1);

    behavior_msg.data = "grab start";
    behaviors_pub.publish(behavior_msg);

    ros::Rate r(30);
    while(state){
        ros::spinOnce();
        r.sleep();
    }


    // // to master
    // while(1) {
    //     if (cliGetWPIndex.call(srvI))
    //     {
    //         std::string name = srvI.response.name;
    //         if (name.compare(target2) != 0)
    //         {
    //             nWPIndex ++;
    //             if (nWPIndex >= nNumOfWaypoints) {
    //                 nWPIndex = 0;
    //             }
    //             srvI.request.index = nWPIndex;
    //             continue;
    //         }
    //         float x = srvI.response.pose.position.x;
    //         float y = srvI.response.pose.position.y;
    //         ROS_INFO("Get_wp_index: name = %s (%.2f,%.2f)", name.c_str(),x,y);
    //         break;
    //     }
    //     else
    //     {
    //         ROS_ERROR("Failed to call service get_wp_index");
    //         return 0;
    //     }
    // }
    
    //  ROS_INFO("Go to the "+target2);
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose.position.x = -2000;
    goal.target_pose.pose.position.y = -2000;
    goal.target_pose.pose.position.z = 0;
    goal.target_pose.pose.orientation.x=0;
    goal.target_pose.pose.orientation.y=0;
    goal.target_pose.pose.orientation.w=0;
    ac.sendGoal(goal);
    ac.waitForResult();

        ctrl_msg.name.resize(2); //松开爪子
        ctrl_msg.position.resize(2);
        ctrl_msg.velocity.resize(2);
        ctrl_msg.name[0] = "lift";
        ctrl_msg.name[1] = "gripper";
        ctrl_msg.position[0] = 0;
        ctrl_msg.position[1] = 0;

        ctrl_msg.position[0] = 1;       //升降高度(单位:米)
        ctrl_msg.velocity[0] = 0.5;     //升降速度(单位:米/秒)
        ctrl_msg.position[1] = 0.1;     //手爪指间距(单位:米)
        ctrl_msg.velocity[1] = 5;       //手爪开合角速度(单位:度/秒)

        mani_ctrl_pub.publish(ctrl_msg); 
        sleep(20);
    // if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    // {
    //     ROS_INFO("Arrived at the  "+target2);
    // }
    // else
    //     ROS_INFO("Failed to get to the "+target2);
    
    return 0;
}
