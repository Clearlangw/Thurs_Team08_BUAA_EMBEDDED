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
/*!******************************************************************
 @author     ZhangWanjie
 ********************************************************************/

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <stdio.h>
#include <termios.h>
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
#include <waterplus_map_tools/SaveWaypoints.h>
#include <unistd.h>
#include <sensor_msgs/JointState.h>



typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

static ros::Publisher behaviors_pub;
static std_msgs::String behavior_msg;

int state = 1;
 std::string waypointName;
            // std::cin >> waypointName;
void GrabResultCB(const std_msgs::String::ConstPtr &msg)
{
    ROS_WARN("[GrabResult] %s", msg->data.c_str());
    if (strcmp(msg->data.c_str(), "done")==0)
    {
        state = 0;
    }
}


int GetCh()
{
  static struct termios oldt, newt;
  tcgetattr( STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~(ICANON);
  tcsetattr( STDIN_FILENO, TCSANOW, &newt);
  int c = getchar();
  tcsetattr( STDIN_FILENO, TCSANOW, &oldt);
  return c;
}

void VoicePointCB(const std_msgs::String::ConstPtr & msg)
{
    ROS_WARN("[KeywordCB] - %s",msg->data.c_str());
    bool bCmd = false;
    int sFindIndex = 0,bFindIndex = 0;
    
    if(msg->data.find("desk")!=std::string::npos ||msg->data.find("Desk")!=std::string::npos)
    {
       waypointName="desk";
        ROS_ERROR("yes i got the desk by listening");
    } else if(msg->data.find("bedroom")!=std::string::npos ||msg->data.find("Bedroom")!=std::string::npos){
         waypointName="bedroom";
        ROS_ERROR("yes i got the bedroom by listening");
    }  else if(msg->data.find("kitchen")!=std::string::npos ||msg->data.find("Kitchen")!=std::string::npos){
         waypointName="kitchen";
        ROS_ERROR("yes i got the kitchen by listening");
    } else if(msg->data.find("person")!=std::string::npos||msg->data.find("Person")!=std::string::npos) {
         waypointName="person";
        ROS_ERROR("yes i got the person by listening");
    } else if(msg->data.find("table") !=std::string::npos ||msg->data.find("Table")!=std::string::npos) {
         waypointName="table";
        ROS_ERROR("yes i got the table by listening");
    }else{
        ROS_ERROR("NO WAYPOINY!!");
        return;
    }
   
    MoveBaseClient ac("move_base", true);
     ros::NodeHandle nh;
    ros::ServiceClient cliGetWPName = nh.serviceClient<waterplus_map_tools::GetWaypointByName>("waterplus/get_waypoint_name");
    ros::ServiceClient cliSave = nh.serviceClient<waterplus_map_tools::SaveWaypoints>("waterplus/save_waypoints");

        while(!ac.waitForServer(ros::Duration(5.0)))
        {
            if(!ros::ok())
                break;
            ROS_INFO("Waiting for the move_base action server to come up");
        }

       waterplus_map_tools::GetWaypointByName srvName;
            srvName.request.name = waypointName; //定义要去的航点名称

            if (cliGetWPName.call(srvName))   //找到了这个航点
            {
                ROS_INFO("Going to waypoint: %s", srvName.response.name.c_str());
                move_base_msgs::MoveBaseGoal goal;
                goal.target_pose.header.frame_id = "map";
                goal.target_pose.header.stamp = ros::Time::now();
                goal.target_pose.pose = srvName.response.pose;

                ac.sendGoal(goal);
                ac.waitForResult();

                if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
                {
                    ROS_INFO("Arrived at waypoint: %s", srvName.response.name.c_str());
                }
                else
                {
                    ROS_INFO("Failed to get to waypoint: %s", srvName.response.name.c_str());
                }
            }
            else
            {
                ROS_ERROR("Failed to call service get_waypoint_name");
            }
            if(waypointName=="desk"){
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
            } else{
                 ros::Publisher mani_ctrl_pub = nh.advertise<sensor_msgs::JointState>("/wpb_home/mani_ctrl", 30);
                 sleep(2);
        sensor_msgs::JointState ctrl_msg;
        ctrl_msg.name.resize(2);
        ctrl_msg.position.resize(2);
        ctrl_msg.velocity.resize(2);
        ctrl_msg.name[0] = "lift";
        ctrl_msg.name[1] = "gripper";
            ctrl_msg.position[0] = 1.0;     //升降高度(单位:米)
            ctrl_msg.velocity[0] = 0.5;     //升降速度(单位:米/秒)
            ctrl_msg.position[1] = 1.0;       //手爪指间距(单位:米)
            ctrl_msg.velocity[1] = 5;       //手爪开合角速度(单位:度/秒)
            }
}

int main(int argc, char** argv)
{

  printf("请选择您想进行的服务 \n");
  printf("n - 语音导航到指定航点 \n");
  printf("a - 添加航点 \n");
  printf("s - 保存航点文件 \n");
  printf("g - 抓取物品 \n");
  printf("r - 放下物品 \n");
  printf("x - 退出 \n");
  printf("------------- \n");
 ros::init(argc, argv, "keyboard_ctrl");
   ros::NodeHandle nh;
      // 创建一个话题订阅者，类型为std_msgs::String
         ros::Subscriber sub = nh.subscribe("voiceWords", 1000, VoicePointCB);
        while(ros::ok())
        {          
        // 循环等待消息
            ros::spin();
       }
  return 0;
}