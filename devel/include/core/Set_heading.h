// Generated by gencpp from file core/Set_heading.msg
// DO NOT EDIT!


#ifndef CORE_MESSAGE_SET_HEADING_H
#define CORE_MESSAGE_SET_HEADING_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace core
{
template <class ContainerAllocator>
struct Set_heading_
{
  typedef Set_heading_<ContainerAllocator> Type;

  Set_heading_()
    : enable_heading_ctrl(false)
    , pwm_max(0)
    , KP(0)
    , KD(0)  {
    }
  Set_heading_(const ContainerAllocator& _alloc)
    : enable_heading_ctrl(false)
    , pwm_max(0)
    , KP(0)
    , KD(0)  {
  (void)_alloc;
    }



   typedef uint8_t _enable_heading_ctrl_type;
  _enable_heading_ctrl_type enable_heading_ctrl;

   typedef uint16_t _pwm_max_type;
  _pwm_max_type pwm_max;

   typedef uint32_t _KP_type;
  _KP_type KP;

   typedef uint32_t _KD_type;
  _KD_type KD;





  typedef boost::shared_ptr< ::core::Set_heading_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::core::Set_heading_<ContainerAllocator> const> ConstPtr;

}; // struct Set_heading_

typedef ::core::Set_heading_<std::allocator<void> > Set_heading;

typedef boost::shared_ptr< ::core::Set_heading > Set_headingPtr;
typedef boost::shared_ptr< ::core::Set_heading const> Set_headingConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::core::Set_heading_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::core::Set_heading_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace core

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'core': ['/home/bluerov/Schreibtisch/BlueROV2/src/core/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::core::Set_heading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::core::Set_heading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core::Set_heading_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::core::Set_heading_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Set_heading_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::core::Set_heading_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::core::Set_heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aaf66dbe4b6106fdd485cfbb25c08b2a";
  }

  static const char* value(const ::core::Set_heading_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaaf66dbe4b6106fdULL;
  static const uint64_t static_value2 = 0xd485cfbb25c08b2aULL;
};

template<class ContainerAllocator>
struct DataType< ::core::Set_heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "core/Set_heading";
  }

  static const char* value(const ::core::Set_heading_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::core::Set_heading_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool enable_heading_ctrl\n\
uint16 pwm_max\n\
uint32 KP\n\
uint32 KD\n\
";
  }

  static const char* value(const ::core::Set_heading_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::core::Set_heading_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.enable_heading_ctrl);
      stream.next(m.pwm_max);
      stream.next(m.KP);
      stream.next(m.KD);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Set_heading_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::core::Set_heading_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::core::Set_heading_<ContainerAllocator>& v)
  {
    s << indent << "enable_heading_ctrl: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_heading_ctrl);
    s << indent << "pwm_max: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.pwm_max);
    s << indent << "KP: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.KP);
    s << indent << "KD: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.KD);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CORE_MESSAGE_SET_HEADING_H
