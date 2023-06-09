#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Point.h>
#include "waterplus_map_tools/positionMsg.h"
int main(int argc, char** argv)
{
    ros::init(argc, argv, "robotPos");

    ros::NodeHandle nh;
    tf::TransformListener listener;
  //  ros::Publisher position_pub = nh.advertise<geometry_msgs::Point>("robot_position", 10);
    //����Ϊrobot_position 

    ros::Rate rate(1); // ���ƽڵ�����Ƶ�ʣ���������Ϊ1Hz

    while (ros::ok())
    {
        tf::StampedTransform transform;

        try
        {
            // ��ȡ�������� "map" ����ϵ�е�λ��
            listener.waitForTransform("map", "base_link", ros::Time(0), ros::Duration(3.0));
            listener.lookupTransform("map", "base_link", ros::Time(0), transform);
        }
        catch (tf::TransformException& ex)
        {
            ROS_ERROR("Failed to get robot position: %s", ex.what());
            continue;
        }

        // ��ȡλ����Ϣ
        double x = transform.getOrigin().x();
        double y = transform.getOrigin().y();
        double w = tf::getYaw(transform.getRotation());

        ROS_INFO("Robot position: x=%.2f, y=%.2f, w=%.2f", x, y, w);

        // ��λ����Ϣ������ROS������
        waterplus_map_tools::positionMsg position_msg;
        position_msg.x = x;
        position_msg.y = y;
        position_msg.w = w;
       // position_pub.publish(position_msg);

        // ����ROS Bridge��Ϣ�����͸�Springboot
        // rosbridge_server::Message bridge_msg;
        // bridge_msg.op = "publish";
        // bridge_msg.topic = "/robot_position";
 // ����ROS Bridge��Ϣ
 // ���Զ�����Ϣת��Ϊ�ַ�����JSON��ʽ
	    // std::stringstream ss;
	    // ss << "{\"x\":" << position_msg.x << ", \"y\":\"" << position_msg.y <<
		// 		", \"w\":\"" << position_msg.w << "\"}";
	    // bridge_msg.msg = ss.str();
	    ros::Publisher bridge_pub = nh.advertise<waterplus_map_tools::positionMsg>("robot_position", 1);
	    bridge_pub.publish(position_msg);
        // ʹ��ROS����������ʵ��ķ�ʽ����bridge_msg��Springboot

        rate.sleep();
    }

    return 0;
}

