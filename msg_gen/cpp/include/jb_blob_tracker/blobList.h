/* Auto-generated by genmsg_cpp for file /home/john/fuerte_workspace/jb_blob_tracker/msg/blobList.msg */
#ifndef JB_BLOB_TRACKER_MESSAGE_BLOBLIST_H
#define JB_BLOB_TRACKER_MESSAGE_BLOBLIST_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "jb_blob_tracker/blob.h"
#include "std_msgs/Header.h"

namespace jb_blob_tracker
{
template <class ContainerAllocator>
struct blobList_ {
  typedef blobList_<ContainerAllocator> Type;

  blobList_()
  : blobVector()
  , length(0)
  , header()
  {
  }

  blobList_(const ContainerAllocator& _alloc)
  : blobVector(_alloc)
  , length(0)
  , header(_alloc)
  {
  }

  typedef std::vector< ::jb_blob_tracker::blob_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::jb_blob_tracker::blob_<ContainerAllocator> >::other >  _blobVector_type;
  std::vector< ::jb_blob_tracker::blob_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::jb_blob_tracker::blob_<ContainerAllocator> >::other >  blobVector;

  typedef int32_t _length_type;
  int32_t length;

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;


  typedef boost::shared_ptr< ::jb_blob_tracker::blobList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jb_blob_tracker::blobList_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct blobList
typedef  ::jb_blob_tracker::blobList_<std::allocator<void> > blobList;

typedef boost::shared_ptr< ::jb_blob_tracker::blobList> blobListPtr;
typedef boost::shared_ptr< ::jb_blob_tracker::blobList const> blobListConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::jb_blob_tracker::blobList_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::jb_blob_tracker::blobList_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace jb_blob_tracker

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::jb_blob_tracker::blobList_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::jb_blob_tracker::blobList_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::jb_blob_tracker::blobList_<ContainerAllocator> > {
  static const char* value() 
  {
    return "8d2a0cc823d382150d040874092aa1f9";
  }

  static const char* value(const  ::jb_blob_tracker::blobList_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x8d2a0cc823d38215ULL;
  static const uint64_t static_value2 = 0x0d040874092aa1f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::jb_blob_tracker::blobList_<ContainerAllocator> > {
  static const char* value() 
  {
    return "jb_blob_tracker/blobList";
  }

  static const char* value(const  ::jb_blob_tracker::blobList_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::jb_blob_tracker::blobList_<ContainerAllocator> > {
  static const char* value() 
  {
    return "jb_blob_tracker/blob[] blobVector\n\
int32 length\n\
Header header\n\
\n\
================================================================================\n\
MSG: jb_blob_tracker/blob\n\
float32 x\n\
float32 y\n\
float32 variance\n\
float32 size\n\
int32 ID\n\
Header header\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
";
  }

  static const char* value(const  ::jb_blob_tracker::blobList_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::jb_blob_tracker::blobList_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.blobVector);
    stream.next(m.length);
    stream.next(m.header);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct blobList_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jb_blob_tracker::blobList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::jb_blob_tracker::blobList_<ContainerAllocator> & v) 
  {
    s << indent << "blobVector[]" << std::endl;
    for (size_t i = 0; i < v.blobVector.size(); ++i)
    {
      s << indent << "  blobVector[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::jb_blob_tracker::blob_<ContainerAllocator> >::stream(s, indent + "    ", v.blobVector[i]);
    }
    s << indent << "length: ";
    Printer<int32_t>::stream(s, indent + "  ", v.length);
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
  }
};


} // namespace message_operations
} // namespace ros

#endif // JB_BLOB_TRACKER_MESSAGE_BLOBLIST_H

