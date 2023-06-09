// Generated by gencpp from file Thus_g5/modify_waypointRequest.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_MODIFY_WAYPOINTREQUEST_H
#define THUS_G5_MESSAGE_MODIFY_WAYPOINTREQUEST_H


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
struct modify_waypointRequest_
{
  typedef modify_waypointRequest_<ContainerAllocator> Type;

  modify_waypointRequest_()
    : op(0)
    , name()  {
    }
  modify_waypointRequest_(const ContainerAllocator& _alloc)
    : op(0)
    , name(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _op_type;
  _op_type op;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> const> ConstPtr;

}; // struct modify_waypointRequest_

typedef ::Thus_g5::modify_waypointRequest_<std::allocator<void> > modify_waypointRequest;

typedef boost::shared_ptr< ::Thus_g5::modify_waypointRequest > modify_waypointRequestPtr;
typedef boost::shared_ptr< ::Thus_g5::modify_waypointRequest const> modify_waypointRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Thus_g5::modify_waypointRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Thus_g5::modify_waypointRequest_<ContainerAllocator1> & lhs, const ::Thus_g5::modify_waypointRequest_<ContainerAllocator2> & rhs)
{
  return lhs.op == rhs.op &&
    lhs.name == rhs.name;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Thus_g5::modify_waypointRequest_<ContainerAllocator1> & lhs, const ::Thus_g5::modify_waypointRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Thus_g5

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5d305bfeabc8d4ca2bf2bd153b69b80c";
  }

  static const char* value(const ::Thus_g5::modify_waypointRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5d305bfeabc8d4caULL;
  static const uint64_t static_value2 = 0x2bf2bd153b69b80cULL;
};

template<class ContainerAllocator>
struct DataType< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Thus_g5/modify_waypointRequest";
  }

  static const char* value(const ::Thus_g5::modify_waypointRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 op\n"
"string name\n"
;
  }

  static const char* value(const ::Thus_g5::modify_waypointRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.op);
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct modify_waypointRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Thus_g5::modify_waypointRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Thus_g5::modify_waypointRequest_<ContainerAllocator>& v)
  {
    s << indent << "op: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.op);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THUS_G5_MESSAGE_MODIFY_WAYPOINTREQUEST_H
