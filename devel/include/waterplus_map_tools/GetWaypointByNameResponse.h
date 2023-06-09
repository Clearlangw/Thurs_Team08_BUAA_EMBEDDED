// Generated by gencpp from file waterplus_map_tools/GetWaypointByNameResponse.msg
// DO NOT EDIT!


#ifndef WATERPLUS_MAP_TOOLS_MESSAGE_GETWAYPOINTBYNAMERESPONSE_H
#define WATERPLUS_MAP_TOOLS_MESSAGE_GETWAYPOINTBYNAMERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace waterplus_map_tools
{
template <class ContainerAllocator>
struct GetWaypointByNameResponse_
{
  typedef GetWaypointByNameResponse_<ContainerAllocator> Type;

  GetWaypointByNameResponse_()
    : name()
    , pose()  {
    }
  GetWaypointByNameResponse_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetWaypointByNameResponse_

typedef ::waterplus_map_tools::GetWaypointByNameResponse_<std::allocator<void> > GetWaypointByNameResponse;

typedef boost::shared_ptr< ::waterplus_map_tools::GetWaypointByNameResponse > GetWaypointByNameResponsePtr;
typedef boost::shared_ptr< ::waterplus_map_tools::GetWaypointByNameResponse const> GetWaypointByNameResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.pose == rhs.pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator1> & lhs, const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace waterplus_map_tools

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "177d54286ddeee12eba514054bddffd5";
  }

  static const char* value(const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x177d54286ddeee12ULL;
  static const uint64_t static_value2 = 0xeba514054bddffd5ULL;
};

template<class ContainerAllocator>
struct DataType< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "waterplus_map_tools/GetWaypointByNameResponse";
  }

  static const char* value(const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"geometry_msgs/Pose pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetWaypointByNameResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::waterplus_map_tools::GetWaypointByNameResponse_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // WATERPLUS_MAP_TOOLS_MESSAGE_GETWAYPOINTBYNAMERESPONSE_H
