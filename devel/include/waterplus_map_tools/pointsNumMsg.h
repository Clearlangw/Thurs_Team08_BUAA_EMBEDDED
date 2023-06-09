// Generated by gencpp from file waterplus_map_tools/pointsNumMsg.msg
// DO NOT EDIT!


#ifndef WATERPLUS_MAP_TOOLS_MESSAGE_POINTSNUMMSG_H
#define WATERPLUS_MAP_TOOLS_MESSAGE_POINTSNUMMSG_H


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
struct pointsNumMsg_
{
  typedef pointsNumMsg_<ContainerAllocator> Type;

  pointsNumMsg_()
    : wayPointsNum(0)  {
    }
  pointsNumMsg_(const ContainerAllocator& _alloc)
    : wayPointsNum(0)  {
  (void)_alloc;
    }



   typedef int32_t _wayPointsNum_type;
  _wayPointsNum_type wayPointsNum;





  typedef boost::shared_ptr< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> const> ConstPtr;

}; // struct pointsNumMsg_

typedef ::waterplus_map_tools::pointsNumMsg_<std::allocator<void> > pointsNumMsg;

typedef boost::shared_ptr< ::waterplus_map_tools::pointsNumMsg > pointsNumMsgPtr;
typedef boost::shared_ptr< ::waterplus_map_tools::pointsNumMsg const> pointsNumMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator2> & rhs)
{
  return lhs.wayPointsNum == rhs.wayPointsNum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waterplus_map_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "21963038274a792e85177cbe61934856";
  }

  static const char* value(const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x21963038274a792eULL;
  static const uint64_t static_value2 = 0x85177cbe61934856ULL;
};

template<class ContainerAllocator>
struct DataType< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waterplus_map_tools/pointsNumMsg";
  }

  static const char* value(const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 wayPointsNum\n"
;
  }

  static const char* value(const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.wayPointsNum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pointsNumMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waterplus_map_tools::pointsNumMsg_<ContainerAllocator>& v)
  {
    s << indent << "wayPointsNum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.wayPointsNum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WATERPLUS_MAP_TOOLS_MESSAGE_POINTSNUMMSG_H
