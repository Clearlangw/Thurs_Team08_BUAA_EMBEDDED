// Generated by gencpp from file Thus_g5/waypoint.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_WAYPOINT_H
#define THUS_G5_MESSAGE_WAYPOINT_H

#include <ros/service_traits.h>


#include <Thus_g5/waypointRequest.h>
#include <Thus_g5/waypointResponse.h>


namespace Thus_g5
{

struct waypoint
{

typedef waypointRequest Request;
typedef waypointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct waypoint
} // namespace Thus_g5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Thus_g5::waypoint > {
  static const char* value()
  {
    return "bed5daee1b4718b12320576a56e38ad1";
  }

  static const char* value(const ::Thus_g5::waypoint&) { return value(); }
};

template<>
struct DataType< ::Thus_g5::waypoint > {
  static const char* value()
  {
    return "Thus_g5/waypoint";
  }

  static const char* value(const ::Thus_g5::waypoint&) { return value(); }
};


// service_traits::MD5Sum< ::Thus_g5::waypointRequest> should match
// service_traits::MD5Sum< ::Thus_g5::waypoint >
template<>
struct MD5Sum< ::Thus_g5::waypointRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::waypoint >::value();
  }
  static const char* value(const ::Thus_g5::waypointRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::waypointRequest> should match
// service_traits::DataType< ::Thus_g5::waypoint >
template<>
struct DataType< ::Thus_g5::waypointRequest>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::waypoint >::value();
  }
  static const char* value(const ::Thus_g5::waypointRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Thus_g5::waypointResponse> should match
// service_traits::MD5Sum< ::Thus_g5::waypoint >
template<>
struct MD5Sum< ::Thus_g5::waypointResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::waypoint >::value();
  }
  static const char* value(const ::Thus_g5::waypointResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::waypointResponse> should match
// service_traits::DataType< ::Thus_g5::waypoint >
template<>
struct DataType< ::Thus_g5::waypointResponse>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::waypoint >::value();
  }
  static const char* value(const ::Thus_g5::waypointResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // THUS_G5_MESSAGE_WAYPOINT_H