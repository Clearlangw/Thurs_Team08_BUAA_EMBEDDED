// Generated by gencpp from file waterplus_map_tools/GetNumOfWaypoints.msg
// DO NOT EDIT!


#ifndef WATERPLUS_MAP_TOOLS_MESSAGE_GETNUMOFWAYPOINTS_H
#define WATERPLUS_MAP_TOOLS_MESSAGE_GETNUMOFWAYPOINTS_H

#include <ros/service_traits.h>


#include <waterplus_map_tools/GetNumOfWaypointsRequest.h>
#include <waterplus_map_tools/GetNumOfWaypointsResponse.h>


namespace waterplus_map_tools
{

struct GetNumOfWaypoints
{

typedef GetNumOfWaypointsRequest Request;
typedef GetNumOfWaypointsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetNumOfWaypoints
} // namespace waterplus_map_tools


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::waterplus_map_tools::GetNumOfWaypoints > {
  static const char* value()
  {
    return "54b3c80efd6fae6e6ffff8a4b9facd69";
  }

  static const char* value(const ::waterplus_map_tools::GetNumOfWaypoints&) { return value(); }
};

template<>
struct DataType< ::waterplus_map_tools::GetNumOfWaypoints > {
  static const char* value()
  {
    return "waterplus_map_tools/GetNumOfWaypoints";
  }

  static const char* value(const ::waterplus_map_tools::GetNumOfWaypoints&) { return value(); }
};


// service_traits::MD5Sum< ::waterplus_map_tools::GetNumOfWaypointsRequest> should match
// service_traits::MD5Sum< ::waterplus_map_tools::GetNumOfWaypoints >
template<>
struct MD5Sum< ::waterplus_map_tools::GetNumOfWaypointsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::waterplus_map_tools::GetNumOfWaypoints >::value();
  }
  static const char* value(const ::waterplus_map_tools::GetNumOfWaypointsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::waterplus_map_tools::GetNumOfWaypointsRequest> should match
// service_traits::DataType< ::waterplus_map_tools::GetNumOfWaypoints >
template<>
struct DataType< ::waterplus_map_tools::GetNumOfWaypointsRequest>
{
  static const char* value()
  {
    return DataType< ::waterplus_map_tools::GetNumOfWaypoints >::value();
  }
  static const char* value(const ::waterplus_map_tools::GetNumOfWaypointsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::waterplus_map_tools::GetNumOfWaypointsResponse> should match
// service_traits::MD5Sum< ::waterplus_map_tools::GetNumOfWaypoints >
template<>
struct MD5Sum< ::waterplus_map_tools::GetNumOfWaypointsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::waterplus_map_tools::GetNumOfWaypoints >::value();
  }
  static const char* value(const ::waterplus_map_tools::GetNumOfWaypointsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::waterplus_map_tools::GetNumOfWaypointsResponse> should match
// service_traits::DataType< ::waterplus_map_tools::GetNumOfWaypoints >
template<>
struct DataType< ::waterplus_map_tools::GetNumOfWaypointsResponse>
{
  static const char* value()
  {
    return DataType< ::waterplus_map_tools::GetNumOfWaypoints >::value();
  }
  static const char* value(const ::waterplus_map_tools::GetNumOfWaypointsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // WATERPLUS_MAP_TOOLS_MESSAGE_GETNUMOFWAYPOINTS_H
