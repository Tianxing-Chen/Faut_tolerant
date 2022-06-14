// Generated by gencpp from file quad_msgs/Px4Timesync.msg
// DO NOT EDIT!


#ifndef QUAD_MSGS_MESSAGE_PX4TIMESYNC_H
#define QUAD_MSGS_MESSAGE_PX4TIMESYNC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace quad_msgs
{
template <class ContainerAllocator>
struct Px4Timesync_
{
  typedef Px4Timesync_<ContainerAllocator> Type;

  Px4Timesync_()
    : header()
    , sync_id(0)
    , time_px4(0)  {
    }
  Px4Timesync_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sync_id(0)
    , time_px4(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int64_t _sync_id_type;
  _sync_id_type sync_id;

   typedef uint64_t _time_px4_type;
  _time_px4_type time_px4;





  typedef boost::shared_ptr< ::quad_msgs::Px4Timesync_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quad_msgs::Px4Timesync_<ContainerAllocator> const> ConstPtr;

}; // struct Px4Timesync_

typedef ::quad_msgs::Px4Timesync_<std::allocator<void> > Px4Timesync;

typedef boost::shared_ptr< ::quad_msgs::Px4Timesync > Px4TimesyncPtr;
typedef boost::shared_ptr< ::quad_msgs::Px4Timesync const> Px4TimesyncConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quad_msgs::Px4Timesync_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quad_msgs::Px4Timesync_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quad_msgs::Px4Timesync_<ContainerAllocator1> & lhs, const ::quad_msgs::Px4Timesync_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.sync_id == rhs.sync_id &&
    lhs.time_px4 == rhs.time_px4;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quad_msgs::Px4Timesync_<ContainerAllocator1> & lhs, const ::quad_msgs::Px4Timesync_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quad_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quad_msgs::Px4Timesync_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quad_msgs::Px4Timesync_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quad_msgs::Px4Timesync_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
{
  static const char* value()
  {
    return "327517baa37dbcc4373715d2a46cae2b";
  }

  static const char* value(const ::quad_msgs::Px4Timesync_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x327517baa37dbcc4ULL;
  static const uint64_t static_value2 = 0x373715d2a46cae2bULL;
};

template<class ContainerAllocator>
struct DataType< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quad_msgs/Px4Timesync";
  }

  static const char* value(const ::quad_msgs::Px4Timesync_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Quadrotor State Estimate \n"
"# This Message is published by an estimator\n"
"\n"
"Header header\n"
"\n"
"# Sync id: not used yet\n"
"int64 sync_id\n"
"\n"
"# PX4fmu timestamp\n"
"uint64 time_px4\n"
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

  static const char* value(const ::quad_msgs::Px4Timesync_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sync_id);
      stream.next(m.time_px4);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Px4Timesync_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quad_msgs::Px4Timesync_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quad_msgs::Px4Timesync_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sync_id: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sync_id);
    s << indent << "time_px4: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.time_px4);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUAD_MSGS_MESSAGE_PX4TIMESYNC_H
