// Generated by gencpp from file quad_msgs/QuadGpioPwmCtrl.msg
// DO NOT EDIT!


#ifndef QUAD_MSGS_MESSAGE_QUADGPIOPWMCTRL_H
#define QUAD_MSGS_MESSAGE_QUADGPIOPWMCTRL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace quad_msgs
{
template <class ContainerAllocator>
struct QuadGpioPwmCtrl_
{
  typedef QuadGpioPwmCtrl_<ContainerAllocator> Type;

  QuadGpioPwmCtrl_()
    : header()
    , device(0)
    , channel(0)
    , value(0.0)  {
    }
  QuadGpioPwmCtrl_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , device(0)
    , channel(0)
    , value(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _device_type;
  _device_type device;

   typedef uint8_t _channel_type;
  _channel_type channel;

   typedef float _value_type;
  _value_type value;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(DEVICE_FMU)
  #undef DEVICE_FMU
#endif
#if defined(_WIN32) && defined(DEVICE_PCA9685_0)
  #undef DEVICE_PCA9685_0
#endif
#if defined(_WIN32) && defined(DEVICE_PCA9685_1)
  #undef DEVICE_PCA9685_1
#endif
#if defined(_WIN32) && defined(DEVICE_PCA9685_2)
  #undef DEVICE_PCA9685_2
#endif
#if defined(_WIN32) && defined(DEVICE_PCA9685_3)
  #undef DEVICE_PCA9685_3
#endif

  enum {
    DEVICE_FMU = 0u,
    DEVICE_PCA9685_0 = 1u,
    DEVICE_PCA9685_1 = 2u,
    DEVICE_PCA9685_2 = 3u,
    DEVICE_PCA9685_3 = 4u,
  };


  typedef boost::shared_ptr< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> const> ConstPtr;

}; // struct QuadGpioPwmCtrl_

typedef ::quad_msgs::QuadGpioPwmCtrl_<std::allocator<void> > QuadGpioPwmCtrl;

typedef boost::shared_ptr< ::quad_msgs::QuadGpioPwmCtrl > QuadGpioPwmCtrlPtr;
typedef boost::shared_ptr< ::quad_msgs::QuadGpioPwmCtrl const> QuadGpioPwmCtrlConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator1> & lhs, const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.device == rhs.device &&
    lhs.channel == rhs.channel &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator1> & lhs, const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quad_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc150882d4dd0ef7629ae2efcdbe50fd";
  }

  static const char* value(const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc150882d4dd0ef7ULL;
  static const uint64_t static_value2 = 0x629ae2efcdbe50fdULL;
};

template<class ContainerAllocator>
struct DataType< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quad_msgs/QuadGpioPwmCtrl";
  }

  static const char* value(const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Control message for GPIO and servo controllers atttached to the FMU\n"
"#\n"
"\n"
"Header header\n"
"\n"
"# Device ID: Selects the device to which the commands are forwarded. Following device IDs are valid:\n"
"# PX4FMU GPIOs (only GPIO_EXT2 can be used; GPIO_EXT1 is reserved for timesynchronization)\n"
"uint8 DEVICE_FMU=0\n"
"\n"
"# PCA9685 PWM controller chip: This device is mounted on the PWR board and connected to the FMU through I2C.\n"
"# For different addresses can be set for the chip with two jumpers on the PWR board (A0, A1): \n"
"# Address 0x40 (default)\n"
"uint8 DEVICE_PCA9685_0=1\n"
"# Address 0x41\n"
"uint8 DEVICE_PCA9685_1=2\n"
"# Address 0x42\n"
"uint8 DEVICE_PCA9685_2=3\n"
"# Address 0x43\n"
"uint8 DEVICE_PCA9685_3=4\n"
"\n"
"# Device ID:\n"
"uint8 device\n"
"\n"
"\n"
"# Channel: Selects the GPIO or the PWM channel\n"
"# For DEVICE_FMU:  {2}\n"
"# For DEVICE_PCA9685: [0, 7]\n"
"uint8 channel\n"
"\n"
"\n"
"# Value which should be assigned to the selected channel.\n"
"# For a GPIO: {0,1}\n"
"# For a Servo pitch: [10.0, 11.0]\n"
"# For a PWM Duty cycle: [20.0f, 21.0f]\n"
"float32 value\n"
"\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.device);
      stream.next(m.channel);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuadGpioPwmCtrl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quad_msgs::QuadGpioPwmCtrl_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "device: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.device);
    s << indent << "channel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.channel);
    s << indent << "value: ";
    Printer<float>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUAD_MSGS_MESSAGE_QUADGPIOPWMCTRL_H
