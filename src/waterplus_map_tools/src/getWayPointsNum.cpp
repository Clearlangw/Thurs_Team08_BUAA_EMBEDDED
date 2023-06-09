#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Point.h>
#include "waterplus_map_tools/pointsNumMsg.h"
#include <waterplus_map_tools/GetNumOfWaypoints.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "getWayPointsNum");
    ros::NodeHandle nh;

    

    ros::Rate rate(1); // ���ƽڵ�����Ƶ�ʣ���������Ϊ1Hz
     waterplus_map_tools::GetNumOfWaypoints srvNum;
      waterplus_map_tools::pointsNumMsg pointsNum;
     ros::ServiceClient cliGetNum = nh.serviceClient<waterplus_map_tools::GetNumOfWaypoints>("waterplus/get_num_waypoint");
    while (ros::ok()) {
     
        if (cliGetNum.call(srvNum))
        {
            pointsNum.wayPointsNum=(int)srvNum.response.num;
            ROS_INFO("Num_wp = %d",  pointsNum.wayPointsNum);
            break;
        }
        else
        {
            ROS_ERROR("Failed to call service get_num_waypoints");
            sleep(1);
        }
  
    }

  ros::Publisher bridge_pub = nh.advertise<waterplus_map_tools::pointsNumMsg>("getWayPointsNum", 1);
    while(ros::ok()){
       
	    bridge_pub.publish(pointsNum);
        ROS_INFO("LOOP");
        rate.sleep();
    }
    return 0;
}

