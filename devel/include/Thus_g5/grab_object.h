// Generated by gencpp from file Thus_g5/grab_object.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_GRAB_OBJECT_H
#define THUS_G5_MESSAGE_GRAB_OBJECT_H

#include <ros/service_traits.h>


#include <Thus_g5/grab_objectRequest.h>
#include <Thus_g5/grab_objectResponse.h>


namespace Thus_g5
{

struct grab_object
{

typedef grab_objectRequest Request;
typedef grab_objectResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct grab_object
} // namespace Thus_g5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::Thus_g5::grab_object > {
  static const char* value()
  {
    return "85eb5661a8af1bbedc0539d77068c54e";
  }

  static const char* value(const ::Thus_g5::grab_object&) { return value(); }
};

template<>
struct DataType< ::Thus_g5::grab_object > {
  static const char* value()
  {
    return "Thus_g5/grab_object";
  }

  static const char* value(const ::Thus_g5::grab_object&) { return value(); }
};


// service_traits::MD5Sum< ::Thus_g5::grab_objectRequest> should match
// service_traits::MD5Sum< ::Thus_g5::grab_object >
template<>
struct MD5Sum< ::Thus_g5::grab_objectRequest>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::grab_object >::value();
  }
  static const char* value(const ::Thus_g5::grab_objectRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::grab_objectRequest> should match
// service_traits::DataType< ::Thus_g5::grab_object >
template<>
struct DataType< ::Thus_g5::grab_objectRequest>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::grab_object >::value();
  }
  static const char* value(const ::Thus_g5::grab_objectRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::Thus_g5::grab_objectResponse> should match
// service_traits::MD5Sum< ::Thus_g5::grab_object >
template<>
struct MD5Sum< ::Thus_g5::grab_objectResponse>
{
  static const char* value()
  {
    return MD5Sum< ::Thus_g5::grab_object >::value();
  }
  static const char* value(const ::Thus_g5::grab_objectResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::Thus_g5::grab_objectResponse> should match
// service_traits::DataType< ::Thus_g5::grab_object >
template<>
struct DataType< ::Thus_g5::grab_objectResponse>
{
  static const char* value()
  {
    return DataType< ::Thus_g5::grab_object >::value();
  }
  static const char* value(const ::Thus_g5::grab_objectResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // THUS_G5_MESSAGE_GRAB_OBJECT_H
