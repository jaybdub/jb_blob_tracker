"""autogenerated by genpy from jb_blob_tracker/blobList.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import jb_blob_tracker.msg

class blobList(genpy.Message):
  _md5sum = "8d2a0cc823d382150d040874092aa1f9"
  _type = "jb_blob_tracker/blobList"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """jb_blob_tracker/blob[] blobVector
int32 length
Header header

================================================================================
MSG: jb_blob_tracker/blob
float32 x
float32 y
float32 variance
float32 size
int32 ID
Header header

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['blobVector','length','header']
  _slot_types = ['jb_blob_tracker/blob[]','int32','std_msgs/Header']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       blobVector,length,header

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(blobList, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.blobVector is None:
        self.blobVector = []
      if self.length is None:
        self.length = 0
      if self.header is None:
        self.header = std_msgs.msg.Header()
    else:
      self.blobVector = []
      self.length = 0
      self.header = std_msgs.msg.Header()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.blobVector)
      buff.write(_struct_I.pack(length))
      for val1 in self.blobVector:
        _x = val1
        buff.write(_struct_4fi.pack(_x.x, _x.y, _x.variance, _x.size, _x.ID))
        _v1 = val1.header
        buff.write(_struct_I.pack(_v1.seq))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_i3I.pack(_x.length, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.blobVector is None:
        self.blobVector = None
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.blobVector = []
      for i in range(0, length):
        val1 = jb_blob_tracker.msg.blob()
        _x = val1
        start = end
        end += 20
        (_x.x, _x.y, _x.variance, _x.size, _x.ID,) = _struct_4fi.unpack(str[start:end])
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _struct_I.unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8')
        else:
          _v3.frame_id = str[start:end]
        self.blobVector.append(val1)
      _x = self
      start = end
      end += 16
      (_x.length, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_i3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.blobVector)
      buff.write(_struct_I.pack(length))
      for val1 in self.blobVector:
        _x = val1
        buff.write(_struct_4fi.pack(_x.x, _x.y, _x.variance, _x.size, _x.ID))
        _v5 = val1.header
        buff.write(_struct_I.pack(_v5.seq))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_i3I.pack(_x.length, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.blobVector is None:
        self.blobVector = None
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.blobVector = []
      for i in range(0, length):
        val1 = jb_blob_tracker.msg.blob()
        _x = val1
        start = end
        end += 20
        (_x.x, _x.y, _x.variance, _x.size, _x.ID,) = _struct_4fi.unpack(str[start:end])
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _struct_I.unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8')
        else:
          _v7.frame_id = str[start:end]
        self.blobVector.append(val1)
      _x = self
      start = end
      end += 16
      (_x.length, _x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_i3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i3I = struct.Struct("<i3I")
_struct_4fi = struct.Struct("<4fi")
_struct_2I = struct.Struct("<2I")
