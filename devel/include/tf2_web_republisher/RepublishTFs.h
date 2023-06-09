// Generated by gencpp from file tf2_web_republisher/RepublishTFs.msg
// DO NOT EDIT!


#ifndef TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFS_H
#define TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFS_H

#include <ros/service_traits.h>


#include <tf2_web_republisher/RepublishTFsRequest.h>
#include <tf2_web_republisher/RepublishTFsResponse.h>


namespace tf2_web_republisher
{

struct RepublishTFs
{

typedef RepublishTFsRequest Request;
typedef RepublishTFsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct RepublishTFs
} // namespace tf2_web_republisher


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::tf2_web_republisher::RepublishTFs > {
  static const char* value()
  {
    return "ec8570dea2e6015c309eb6611d1a57d0";
  }

  static const char* value(const ::tf2_web_republisher::RepublishTFs&) { return value(); }
};

template<>
struct DataType< ::tf2_web_republisher::RepublishTFs > {
  static const char* value()
  {
    return "tf2_web_republisher/RepublishTFs";
  }

  static const char* value(const ::tf2_web_republisher::RepublishTFs&) { return value(); }
};


// service_traits::MD5Sum< ::tf2_web_republisher::RepublishTFsRequest> should match
// service_traits::MD5Sum< ::tf2_web_republisher::RepublishTFs >
template<>
struct MD5Sum< ::tf2_web_republisher::RepublishTFsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::tf2_web_republisher::RepublishTFs >::value();
  }
  static const char* value(const ::tf2_web_republisher::RepublishTFsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::tf2_web_republisher::RepublishTFsRequest> should match
// service_traits::DataType< ::tf2_web_republisher::RepublishTFs >
template<>
struct DataType< ::tf2_web_republisher::RepublishTFsRequest>
{
  static const char* value()
  {
    return DataType< ::tf2_web_republisher::RepublishTFs >::value();
  }
  static const char* value(const ::tf2_web_republisher::RepublishTFsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::tf2_web_republisher::RepublishTFsResponse> should match
// service_traits::MD5Sum< ::tf2_web_republisher::RepublishTFs >
template<>
struct MD5Sum< ::tf2_web_republisher::RepublishTFsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::tf2_web_republisher::RepublishTFs >::value();
  }
  static const char* value(const ::tf2_web_republisher::RepublishTFsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::tf2_web_republisher::RepublishTFsResponse> should match
// service_traits::DataType< ::tf2_web_republisher::RepublishTFs >
template<>
struct DataType< ::tf2_web_republisher::RepublishTFsResponse>
{
  static const char* value()
  {
    return DataType< ::tf2_web_republisher::RepublishTFs >::value();
  }
  static const char* value(const ::tf2_web_republisher::RepublishTFsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TF2_WEB_REPUBLISHER_MESSAGE_REPUBLISHTFS_H
