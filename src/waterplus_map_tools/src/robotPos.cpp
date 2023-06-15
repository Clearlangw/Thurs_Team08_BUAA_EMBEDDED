#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Point.h>
#include "waterplus_map_tools/positionMsg.h"
int main(int argc, char** argv)
{
    ros::init(argc, argv, "robotPos");

    ros::NodeHandle nh;
    tf::TransformListener listener;
    ros::Publisher bridge_pub = nh.advertise<waterplus_map_tools::positionMsg>("realtime_pos", 1);


    ros::Rate rate(1);

    while (ros::ok())
    {
        tf::StampedTransform transform;

        try
        {
            listener.waitForTransform("map", "base_link", ros::Time(0), ros::Duration(3.0));
            listener.lookupTransform("map", "base_link", ros::Time(0), transform);
        }
        catch (tf::TransformException& ex)
        {
            ROS_ERROR("Failed to get robot position: %s", ex.what());
            continue;
        }


        double x = transform.getOrigin().x();
        double y = transform.getOrigin().y();
        double roll,pitch,yaw;
        tf::Matrix3x3(transform.getRotation()).getRPY(roll,pitch,yaw);
        //double w = tf::getYaw(transform.getRotation());

        ROS_INFO("Robot position: x=%.2f, y=%.2f, w=%.2f", x, y,yaw);

        waterplus_map_tools::positionMsg position_msg;
        position_msg.x = x;
        position_msg.y = y;
        position_msg.w = yaw;

	    bridge_pub.publish(position_msg);


        rate.sleep();
    }

    return 0;
}

