// Generated by gencpp from file waterplus_map_tools/positionMsg.msg
// DO NOT EDIT!


#ifndef WATERPLUS_MAP_TOOLS_MESSAGE_POSITIONMSG_H
#define WATERPLUS_MAP_TOOLS_MESSAGE_POSITIONMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace waterplus_map_tools
{
template <class ContainerAllocator>
struct positionMsg_
{
  typedef positionMsg_<ContainerAllocator> Type;

  positionMsg_()
    : x(0.0)
    , y(0.0)
    , w(0.0)  {
    }
  positionMsg_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , w(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _w_type;
  _w_type w;





  typedef boost::shared_ptr< ::waterplus_map_tools::positionMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waterplus_map_tools::positionMsg_<ContainerAllocator> const> ConstPtr;

}; // struct positionMsg_

typedef ::waterplus_map_tools::positionMsg_<std::allocator<void> > positionMsg;

typedef boost::shared_ptr< ::waterplus_map_tools::positionMsg > positionMsgPtr;
typedef boost::shared_ptr< ::waterplus_map_tools::positionMsg const> positionMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waterplus_map_tools::positionMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waterplus_map_tools::positionMsg_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::positionMsg_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.w == rhs.w;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waterplus_map_tools::positionMsg_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::positionMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waterplus_map_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::positionMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::positionMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::positionMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc16a6b45aaa44f2dd9023be467748ee";
  }

  static const char* value(const ::waterplus_map_tools::positionMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc16a6b45aaa44f2ULL;
  static const uint64_t static_value2 = 0xdd9023be467748eeULL;
};

template<class ContainerAllocator>
struct DataType< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waterplus_map_tools/positionMsg";
  }

  static const char* value(const ::waterplus_map_tools::positionMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n"
"float32 y\n"
"float32 w\n"
;
  }

  static const char* value(const ::waterplus_map_tools::positionMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.w);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct positionMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waterplus_map_tools::positionMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waterplus_map_tools::positionMsg_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "w: ";
    Printer<float>::stream(s, indent + "  ", v.w);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WATERPLUS_MAP_TOOLS_MESSAGE_POSITIONMSG_H
