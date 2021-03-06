// Generated by gencpp from file counting_character/WordCountResponse.msg
// DO NOT EDIT!


#ifndef COUNTING_CHARACTER_MESSAGE_WORDCOUNTRESPONSE_H
#define COUNTING_CHARACTER_MESSAGE_WORDCOUNTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace counting_character
{
template <class ContainerAllocator>
struct WordCountResponse_
{
  typedef WordCountResponse_<ContainerAllocator> Type;

  WordCountResponse_()
    : count(0)  {
    }
  WordCountResponse_(const ContainerAllocator& _alloc)
    : count(0)  {
  (void)_alloc;
    }



   typedef uint64_t _count_type;
  _count_type count;





  typedef boost::shared_ptr< ::counting_character::WordCountResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::counting_character::WordCountResponse_<ContainerAllocator> const> ConstPtr;

}; // struct WordCountResponse_

typedef ::counting_character::WordCountResponse_<std::allocator<void> > WordCountResponse;

typedef boost::shared_ptr< ::counting_character::WordCountResponse > WordCountResponsePtr;
typedef boost::shared_ptr< ::counting_character::WordCountResponse const> WordCountResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::counting_character::WordCountResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::counting_character::WordCountResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::counting_character::WordCountResponse_<ContainerAllocator1> & lhs, const ::counting_character::WordCountResponse_<ContainerAllocator2> & rhs)
{
  return lhs.count == rhs.count;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::counting_character::WordCountResponse_<ContainerAllocator1> & lhs, const ::counting_character::WordCountResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace counting_character

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::counting_character::WordCountResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::counting_character::WordCountResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::counting_character::WordCountResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::counting_character::WordCountResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::counting_character::WordCountResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::counting_character::WordCountResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::counting_character::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cfd3678ab5469539f970295b97a3d7c3";
  }

  static const char* value(const ::counting_character::WordCountResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcfd3678ab5469539ULL;
  static const uint64_t static_value2 = 0xf970295b97a3d7c3ULL;
};

template<class ContainerAllocator>
struct DataType< ::counting_character::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "counting_character/WordCountResponse";
  }

  static const char* value(const ::counting_character::WordCountResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::counting_character::WordCountResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 count\n"
"\n"
;
  }

  static const char* value(const ::counting_character::WordCountResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::counting_character::WordCountResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WordCountResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::counting_character::WordCountResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::counting_character::WordCountResponse_<ContainerAllocator>& v)
  {
    s << indent << "count: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COUNTING_CHARACTER_MESSAGE_WORDCOUNTRESPONSE_H
