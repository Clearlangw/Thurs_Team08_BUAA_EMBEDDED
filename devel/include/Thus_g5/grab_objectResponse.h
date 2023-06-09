// Generated by gencpp from file Thus_g5/grab_objectResponse.msg
// DO NOT EDIT!


#ifndef THUS_G5_MESSAGE_GRAB_OBJECTRESPONSE_H
#define THUS_G5_MESSAGE_GRAB_OBJECTRESPONSE_H


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
struct grab_objectResponse_
{
  typedef grab_objectResponse_<ContainerAllocator> Type;

  grab_objectResponse_()
    : flag(0)  {
    }
  grab_objectResponse_(const ContainerAllocator& _alloc)
    : flag(0)  {
  (void)_alloc;
    }



   typedef uint8_t _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::Thus_g5::grab_objectResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::Thus_g5::grab_objectResponse_<ContainerAllocator> const> ConstPtr;

}; // struct grab_objectResponse_

typedef ::Thus_g5::grab_objectResponse_<std::allocator<void> > grab_objectResponse;

typedef boost::shared_ptr< ::Thus_g5::grab_objectResponse > grab_objectResponsePtr;
typedef boost::shared_ptr< ::Thus_g5::grab_objectResponse const> grab_objectResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::Thus_g5::grab_objectResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::Thus_g5::grab_objectResponse_<ContainerAllocator1> & lhs, const ::Thus_g5::grab_objectResponse_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::Thus_g5::grab_objectResponse_<ContainerAllocator1> & lhs, const ::Thus_g5::grab_objectResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace Thus_g5

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::Thus_g5::grab_objectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::Thus_g5::grab_objectResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::Thus_g5::grab_objectResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b6a8907dbdc46dea839fb59e243dc983";
  }

  static const char* value(const ::Thus_g5::grab_objectResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb6a8907dbdc46deaULL;
  static const uint64_t static_value2 = 0x839fb59e243dc983ULL;
};

template<class ContainerAllocator>
struct DataType< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Thus_g5/grab_objectResponse";
  }

  static const char* value(const ::Thus_g5::grab_objectResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 flag\n"
;
  }

  static const char* value(const ::Thus_g5::grab_objectResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct grab_objectResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::Thus_g5::grab_objectResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::Thus_g5::grab_objectResponse_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // THUS_G5_MESSAGE_GRAB_OBJECTRESPONSE_H
