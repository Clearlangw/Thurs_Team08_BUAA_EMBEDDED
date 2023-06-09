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


int main(int argc, char** argv)
{
    ros::init(argc, argv, "wp_my_nav");

    ros::NodeHandle nh;
    ros::ServiceClient cliGetNum = nh.serviceClient<waterplus_map_tools::GetNumOfWaypoints>("waterplus/get_num_waypoint");
    ros::ServiceClient cliGetWPIndex = nh.serviceClient<waterplus_map_tools::GetWaypointByIndex>("waterplus/get_waypoint_index");
    ros::ServiceClient cliGetWPName = nh.serviceClient<waterplus_map_tools::GetWaypointByName>("waterplus/get_waypoint_name");

    ///////////////////////////////////////////////////////////////////////////////////
    waterplus_map_tools::GetNumOfWaypoints srvNum;
    ros::NodeHandle n_param("~");
    sleep(1);
    std::string target;
    n_param.param<std::string>("target", target, "");
    if(target.length() <= 0) {
        ROS_INFO("no target specified!!");
        target = "desk"; // default target
    }

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
            if (name.compare("desk") != 0)
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
    
     ROS_INFO("Go to the Desk");
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose = srvI.response.pose;
    ac.sendGoal(goal);
    ac.waitForResult();

    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
        ROS_INFO("Arrived at the Desk !");
    }
    else
        ROS_INFO("Failed to get to the Desk");


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


    // to master
    while(1) {
        if (cliGetWPIndex.call(srvI))
        {
            std::string name = srvI.response.name;
            if (name.compare("master") != 0)
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
    
     ROS_INFO("Go to the Master");
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose = srvI.response.pose;
    ac.sendGoal(goal);
    ac.waitForResult();

    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
        ROS_INFO("Arrived at the Master !");
    }
    else
        ROS_INFO("Failed to get to the Master");

    return 0;
}