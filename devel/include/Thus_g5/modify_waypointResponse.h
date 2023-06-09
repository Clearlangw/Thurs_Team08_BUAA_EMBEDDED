// Generated by gencpp from file Thus_g5/modify_waypointResponse.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_MODIFY_WAYPOINTRESPONSE_H
#define THUS_G5_MESSAGE_MODIFY_WAYPOINTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace Thus_g5
{
template <class ContainerAllocator>
struct modify_waypointResponse_
{
  typedef modify_waypointResponse_<ContainerAllocator> Type;

  modify_waypointResponse_()
    : flag(0)
    , x(0.0)
    , y(0.0)
    , th(0.0)  {
    }
  modify_waypointResponse_(const ContainerAllocator& _alloc)
    : flag(0)
    , x(0.0)
    , y(0.0)
    , th(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _flag_type;
  _flag_type flag;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _th_type;
  _th_type th;





  typedef boost::shared_ptr< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> const> ConstPtr;

}; // struct modify_waypointResponse_

typedef ::Thus_g5::modify_waypointResponse_<std::allocator<void> > modify_waypointResponse;

typedef boost::shared_ptr< ::Thus_g5::modify_waypointResponse > modify_waypointResponsePtr;
typedef boost::shared_ptr< ::Thus_g5::modify_waypointResponse const> modify_waypointResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Thus_g5::modify_waypointResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Thus_g5::modify_waypointResponse_<ContainerAllocator1> & lhs, const ::Thus_g5::modify_waypointResponse_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.th == rhs.th;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Thus_g5::modify_waypointResponse_<ContainerAllocator1> & lhs, const ::Thus_g5::modify_waypointResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Thus_g5

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4d5c92c2a3358924aa6c0e93cdbfc27d";
  }

  static const char* value(const ::Thus_g5::modify_waypointResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4d5c92c2a3358924ULL;
  static const uint64_t static_value2 = 0xaa6c0e93cdbfc27dULL;
};

template<class ContainerAllocator>
struct DataType< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Thus_g5/modify_waypointResponse";
  }

  static const char* value(const ::Thus_g5::modify_waypointResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 flag\n"
"float32 x\n"
"float32 y\n"
"float32 th\n"
;
  }

  static const char* value(const ::Thus_g5::modify_waypointResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.th);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct modify_waypointResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Thus_g5::modify_waypointResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Thus_g5::modify_waypointResponse_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "th: ";
    Printer<float>::stream(s, indent + "  ", v.th);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THUS_G5_MESSAGE_MODIFY_WAYPOINTRESPONSE_H
