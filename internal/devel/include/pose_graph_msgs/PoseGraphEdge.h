// Generated by gencpp from file pose_graph_msgs/PoseGraphEdge.msg
// DO NOT EDIT!


#ifndef POSE_GRAPH_MSGS_MESSAGE_POSEGRAPHEDGE_H
#define POSE_GRAPH_MSGS_MESSAGE_POSEGRAPHEDGE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pose_graph_msgs
{
template <class ContainerAllocator>
struct PoseGraphEdge_
{
  typedef PoseGraphEdge_<ContainerAllocator> Type;

  PoseGraphEdge_()
    : key_from(0)
    , key_to(0)  {
    }
  PoseGraphEdge_(const ContainerAllocator& _alloc)
    : key_from(0)
    , key_to(0)  {
  (void)_alloc;
    }



   typedef uint64_t _key_from_type;
  _key_from_type key_from;

   typedef uint64_t _key_to_type;
  _key_to_type key_to;





  typedef boost::shared_ptr< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> const> ConstPtr;

}; // struct PoseGraphEdge_

typedef ::pose_graph_msgs::PoseGraphEdge_<std::allocator<void> > PoseGraphEdge;

typedef boost::shared_ptr< ::pose_graph_msgs::PoseGraphEdge > PoseGraphEdgePtr;
typedef boost::shared_ptr< ::pose_graph_msgs::PoseGraphEdge const> PoseGraphEdgeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator1> & lhs, const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator2> & rhs)
{
  return lhs.key_from == rhs.key_from &&
    lhs.key_to == rhs.key_to;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator1> & lhs, const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pose_graph_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "412ec4974717bfb14dd2482fb43c1f28";
  }

  static const char* value(const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x412ec4974717bfb1ULL;
  static const uint64_t static_value2 = 0x4dd2482fb43c1f28ULL;
};

template<class ContainerAllocator>
struct DataType< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pose_graph_msgs/PoseGraphEdge";
  }

  static const char* value(const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 key_from\n"
"uint64 key_to\n"
;
  }

  static const char* value(const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key_from);
      stream.next(m.key_to);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PoseGraphEdge_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pose_graph_msgs::PoseGraphEdge_<ContainerAllocator>& v)
  {
    s << indent << "key_from: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.key_from);
    s << indent << "key_to: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.key_to);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POSE_GRAPH_MSGS_MESSAGE_POSEGRAPHEDGE_H
