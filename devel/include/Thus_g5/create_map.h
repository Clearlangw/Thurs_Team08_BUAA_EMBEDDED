// Generated by gencpp from file Thus_g5/create_map.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_CREATE_MAP_H
#define THUS_G5_MESSAGE_CREATE_MAP_H

#include <ros/service_traits.h>


#include <Thus_g5/create_mapRequest.h>
#include <Thus_g5/create_mapResponse.h>


namespace Thus_g5
{

struct create_map
{

typedef create_mapRequest Request;
typedef create_mapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct create_map
} // namespace Thus_g5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Thus_g5::create_map > {
  static const char* value()
  {
    return "fdf9d2b99128bd8fc18468084eb93c4f";
  }

  static const char* value(const ::Thus_g5::create_map&) { return value(); }
};

template<>
struct DataType< ::Thus_g5::create_map > {
  static const char* value()
  {
    return "Thus_g5/create_map";
  }

  static const char* value(const ::Thus_g5::create_map&) { return value(); }
};


// service_traits::MD5Sum< ::Thus_g5::create_mapRequest> should match
// service_traits::MD5Sum< ::Thus_g5::create_map >
template<>
struct MD5Sum< ::Thus_g5::create_mapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::create_map >::value();
  }
  static const char* value(const ::Thus_g5::create_mapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::create_mapRequest> should match
// service_traits::DataType< ::Thus_g5::create_map >
template<>
struct DataType< ::Thus_g5::create_mapRequest>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::create_map >::value();
  }
  static const char* value(const ::Thus_g5::create_mapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Thus_g5::create_mapResponse> should match
// service_traits::MD5Sum< ::Thus_g5::create_map >
template<>
struct MD5Sum< ::Thus_g5::create_mapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::create_map >::value();
  }
  static const char* value(const ::Thus_g5::create_mapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::create_mapResponse> should match
// service_traits::DataType< ::Thus_g5::create_map >
template<>
struct DataType< ::Thus_g5::create_mapResponse>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::create_map >::value();
  }
  static const char* value(const ::Thus_g5::create_mapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // THUS_G5_MESSAGE_CREATE_MAP_H
