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
#include <math.h>

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
    ros::Publisher mani_ctrl_pub = nh.advertise<sensor_msgs::JointState>("/wpb_home/mani_ctrl", 30);
    sensor_msgs::JointState ctrl_msg;

    ros::Publisher voice_notice = nh.advertise<std_msgs::String>("warning", 30);
    std_msgs::String voice_msg;

    ros::NodeHandle n_param("~");
    sleep(1);
   
       double x,y,w;
    n_param.getParam("srcX",x);
    n_param.getParam("srcY",y);
    n_param.getParam("srcW",w);

    MoveBaseClient ac("move_base", true);
    move_base_msgs::MoveBaseGoal goal;

    while(!ac.waitForServer(ros::Duration(5.0)))
    {
        if(!ros::ok())
            break;
        ROS_INFO("Waiting for the move_base action server to come up");
    }
 
     voice_msg.data="开始服务";
    voice_notice.publish(voice_msg);
      sleep(1);

    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose.position.x=x;
    goal.target_pose.pose.position.y=y;
    goal.target_pose.pose.orientation.w=cos(w/2);
    goal.target_pose.pose.orientation.z=sin(w/2);
    ac.sendGoal(goal);
    ac.waitForResult();
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
        voice_msg.data="到达物品所在地方";
        voice_notice.publish(voice_msg);
        sleep(8);
        ROS_INFO("-------- ARRIVE SRC --------");
    }
    else {
        voice_msg.data="到达物品所在地失败";
        voice_notice.publish(voice_msg);
        sleep(8);
        ROS_INFO("-------- FAILED GO TO SRC --------");
    }

    start grab
    behaviors_pub = nh.advertise<std_msgs::String>("/wpb_home/behaviors", 30);
    ros::Subscriber res_sub = nh.subscribe("/wpb_home/grab_result", 30, GrabResultCB);
    sleep(1);

    behavior_msg.data = "grab start";
    behaviors_pub.publish(behavior_msg);
    voice_msg.data="开始抓取物品";
    voice_notice.publish(voice_msg);
    sleep(1);
    ROS_INFO("-------- GRAB START --------");
    ros::Rate r(30);
    while(state){
        ros::spinOnce();
        r.sleep();
    }


    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose.position.x = 0;
    goal.target_pose.pose.position.y = 0;
    goal.target_pose.pose.position.z = 0;
    goal.target_pose.pose.orientation.x=0;
    goal.target_pose.pose.orientation.y=0;
    goal.target_pose.pose.orientation.w=1;
    goal.target_pose.pose.orientation.z=0;
    ac.sendGoal(goal);
    ac.waitForResult();
     if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
     {
         voice_msg.data="到达目的地成功";
         voice_notice.publish(voice_msg);
         sleep(8);
         ROS_INFO("-------- ARRIVE ZERO --------");
     }
     else {
         voice_msg.data="到达目的地失败";
         voice_notice.publish(voice_msg);
         sleep(8);
         ROS_INFO("-------- FAILED BACK TO ZERO --------");
    }

     // initial setting
    ctrl_msg.name.resize(2);
    ctrl_msg.position.resize(2);
    ctrl_msg.velocity.resize(2);
    ctrl_msg.name[0] = "lift";
    ctrl_msg.name[1] = "gripper";
    ctrl_msg.position[0] = 0;
    ctrl_msg.position[1] = 0;


    // relese the claws
    ROS_INFO("-------- RELEASE CLAWS  --------");
    voice_msg.data="开始放下物品";
    voice_notice.publish(voice_msg);
    sleep(8);
    ctrl_msg.position[0] = 1;       //升降高度(单位:米)
    ctrl_msg.velocity[0] = 0.5;     //升降速度(单位:米/秒)
    ctrl_msg.position[1] = 0.4;     //手爪指间距(单位:米)
    ctrl_msg.velocity[1] = 5;       //手爪开合角速度(单位:度/秒)
    mani_ctrl_pub.publish(ctrl_msg);
    sleep(1);
    fold
    voice_msg.data="收起爪子";
    voice_notice.publish(voice_msg);
    sleep(5);
    ROS_INFO("-------- FOLD CLAWS  --------");
    ctrl_msg.position[0] = 0;       //升降高度(单位:米)
    ctrl_msg.velocity[0] = 0.5;     //升降速度(单位:米/秒)
    ctrl_msg.position[1] = 0.1;     //手爪指间距(单位:米)
    ctrl_msg.velocity[1] = 5;       //手爪开合角速度(单位:度/秒)
    mani_ctrl_pub.publish(ctrl_msg);
    sleep(5);
     voice_msg.data="服务结束";
    voice_notice.publish(voice_msg);
    sleep(1);
    system("ps aux | grep -e serviceGrab | grep -v grep | awk '{print $2}' | xargs -i kill {}&");
    return 0;
}
