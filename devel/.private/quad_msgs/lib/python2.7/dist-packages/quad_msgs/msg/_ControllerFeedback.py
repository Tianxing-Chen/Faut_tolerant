# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from quad_msgs/ControllerFeedback.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import geometry_msgs.msg
import quad_msgs.msg
import std_msgs.msg

class ControllerFeedback(genpy.Message):
  _md5sum = "2d0f199907489e337c0d2dad1e3e9d0d"
  _type = "quad_msgs/ControllerFeedback"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

int8 tracking_ok

# State machine of the controller
int8 controller_state

# Time at which the resulting control command should be executed
time command_execution_time

# Desired state used to compute the control command
quad_msgs/QuadDesiredState desired_state

# State estimate used to compute the control command
quad_msgs/QuadStateEstimate state_estimate

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: quad_msgs/QuadDesiredState
# Quadrotor Desired State 

Header header

# 3D position in world frame [m]
geometry_msgs/Vector3 position

# 3D velocity in world frame [m/s]
geometry_msgs/Vector3 velocity

# 3D acceleration in world frame [m/s^2]
geometry_msgs/Vector3 acceleration

# 3D jerk in world frame [m/s^3]
geometry_msgs/Vector3 jerk

# 3D snap in world frame [m/s^4]
geometry_msgs/Vector3 snap

# yaw angle with respect to world frame [rad]
float64 yaw

# angular velocity in the body z-direction [rad/s]
float64 yaw_rate

# angular acceleration in the body z-direction [rad/s^2]
float64 yaw_acceleration

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: quad_msgs/QuadStateEstimate
# Quadrotor State Estimate 
# This Message is published by an estimator

Header header

#
int8 estimator_id

# 3D position in world frame [m]
geometry_msgs/Vector3 position

# 3D velocity in world frame [m/s]
geometry_msgs/Vector3 velocity

# Orientation with respect to world frame []
geometry_msgs/Quaternion orientation

# Body rates in body frame [rad/s]
geometry_msgs/Vector3 bodyrates

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['header','tracking_ok','controller_state','command_execution_time','desired_state','state_estimate']
  _slot_types = ['std_msgs/Header','int8','int8','time','quad_msgs/QuadDesiredState','quad_msgs/QuadStateEstimate']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tracking_ok,controller_state,command_execution_time,desired_state,state_estimate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControllerFeedback, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tracking_ok is None:
        self.tracking_ok = 0
      if self.controller_state is None:
        self.controller_state = 0
      if self.command_execution_time is None:
        self.command_execution_time = genpy.Time()
      if self.desired_state is None:
        self.desired_state = quad_msgs.msg.QuadDesiredState()
      if self.state_estimate is None:
        self.state_estimate = quad_msgs.msg.QuadStateEstimate()
    else:
      self.header = std_msgs.msg.Header()
      self.tracking_ok = 0
      self.controller_state = 0
      self.command_execution_time = genpy.Time()
      self.desired_state = quad_msgs.msg.QuadDesiredState()
      self.state_estimate = quad_msgs.msg.QuadStateEstimate()

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
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2b5I().pack(_x.tracking_ok, _x.controller_state, _x.command_execution_time.secs, _x.command_execution_time.nsecs, _x.desired_state.header.seq, _x.desired_state.header.stamp.secs, _x.desired_state.header.stamp.nsecs))
      _x = self.desired_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_18d3I().pack(_x.desired_state.position.x, _x.desired_state.position.y, _x.desired_state.position.z, _x.desired_state.velocity.x, _x.desired_state.velocity.y, _x.desired_state.velocity.z, _x.desired_state.acceleration.x, _x.desired_state.acceleration.y, _x.desired_state.acceleration.z, _x.desired_state.jerk.x, _x.desired_state.jerk.y, _x.desired_state.jerk.z, _x.desired_state.snap.x, _x.desired_state.snap.y, _x.desired_state.snap.z, _x.desired_state.yaw, _x.desired_state.yaw_rate, _x.desired_state.yaw_acceleration, _x.state_estimate.header.seq, _x.state_estimate.header.stamp.secs, _x.state_estimate.header.stamp.nsecs))
      _x = self.state_estimate.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_b13d().pack(_x.state_estimate.estimator_id, _x.state_estimate.position.x, _x.state_estimate.position.y, _x.state_estimate.position.z, _x.state_estimate.velocity.x, _x.state_estimate.velocity.y, _x.state_estimate.velocity.z, _x.state_estimate.orientation.x, _x.state_estimate.orientation.y, _x.state_estimate.orientation.z, _x.state_estimate.orientation.w, _x.state_estimate.bodyrates.x, _x.state_estimate.bodyrates.y, _x.state_estimate.bodyrates.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.command_execution_time is None:
        self.command_execution_time = genpy.Time()
      if self.desired_state is None:
        self.desired_state = quad_msgs.msg.QuadDesiredState()
      if self.state_estimate is None:
        self.state_estimate = quad_msgs.msg.QuadStateEstimate()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.tracking_ok, _x.controller_state, _x.command_execution_time.secs, _x.command_execution_time.nsecs, _x.desired_state.header.seq, _x.desired_state.header.stamp.secs, _x.desired_state.header.stamp.nsecs,) = _get_struct_2b5I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.desired_state.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.desired_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.desired_state.position.x, _x.desired_state.position.y, _x.desired_state.position.z, _x.desired_state.velocity.x, _x.desired_state.velocity.y, _x.desired_state.velocity.z, _x.desired_state.acceleration.x, _x.desired_state.acceleration.y, _x.desired_state.acceleration.z, _x.desired_state.jerk.x, _x.desired_state.jerk.y, _x.desired_state.jerk.z, _x.desired_state.snap.x, _x.desired_state.snap.y, _x.desired_state.snap.z, _x.desired_state.yaw, _x.desired_state.yaw_rate, _x.desired_state.yaw_acceleration, _x.state_estimate.header.seq, _x.state_estimate.header.stamp.secs, _x.state_estimate.header.stamp.nsecs,) = _get_struct_18d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_estimate.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_estimate.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 105
      (_x.state_estimate.estimator_id, _x.state_estimate.position.x, _x.state_estimate.position.y, _x.state_estimate.position.z, _x.state_estimate.velocity.x, _x.state_estimate.velocity.y, _x.state_estimate.velocity.z, _x.state_estimate.orientation.x, _x.state_estimate.orientation.y, _x.state_estimate.orientation.z, _x.state_estimate.orientation.w, _x.state_estimate.bodyrates.x, _x.state_estimate.bodyrates.y, _x.state_estimate.bodyrates.z,) = _get_struct_b13d().unpack(str[start:end])
      self.command_execution_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_2b5I().pack(_x.tracking_ok, _x.controller_state, _x.command_execution_time.secs, _x.command_execution_time.nsecs, _x.desired_state.header.seq, _x.desired_state.header.stamp.secs, _x.desired_state.header.stamp.nsecs))
      _x = self.desired_state.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_18d3I().pack(_x.desired_state.position.x, _x.desired_state.position.y, _x.desired_state.position.z, _x.desired_state.velocity.x, _x.desired_state.velocity.y, _x.desired_state.velocity.z, _x.desired_state.acceleration.x, _x.desired_state.acceleration.y, _x.desired_state.acceleration.z, _x.desired_state.jerk.x, _x.desired_state.jerk.y, _x.desired_state.jerk.z, _x.desired_state.snap.x, _x.desired_state.snap.y, _x.desired_state.snap.z, _x.desired_state.yaw, _x.desired_state.yaw_rate, _x.desired_state.yaw_acceleration, _x.state_estimate.header.seq, _x.state_estimate.header.stamp.secs, _x.state_estimate.header.stamp.nsecs))
      _x = self.state_estimate.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_b13d().pack(_x.state_estimate.estimator_id, _x.state_estimate.position.x, _x.state_estimate.position.y, _x.state_estimate.position.z, _x.state_estimate.velocity.x, _x.state_estimate.velocity.y, _x.state_estimate.velocity.z, _x.state_estimate.orientation.x, _x.state_estimate.orientation.y, _x.state_estimate.orientation.z, _x.state_estimate.orientation.w, _x.state_estimate.bodyrates.x, _x.state_estimate.bodyrates.y, _x.state_estimate.bodyrates.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.command_execution_time is None:
        self.command_execution_time = genpy.Time()
      if self.desired_state is None:
        self.desired_state = quad_msgs.msg.QuadDesiredState()
      if self.state_estimate is None:
        self.state_estimate = quad_msgs.msg.QuadStateEstimate()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 22
      (_x.tracking_ok, _x.controller_state, _x.command_execution_time.secs, _x.command_execution_time.nsecs, _x.desired_state.header.seq, _x.desired_state.header.stamp.secs, _x.desired_state.header.stamp.nsecs,) = _get_struct_2b5I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.desired_state.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.desired_state.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.desired_state.position.x, _x.desired_state.position.y, _x.desired_state.position.z, _x.desired_state.velocity.x, _x.desired_state.velocity.y, _x.desired_state.velocity.z, _x.desired_state.acceleration.x, _x.desired_state.acceleration.y, _x.desired_state.acceleration.z, _x.desired_state.jerk.x, _x.desired_state.jerk.y, _x.desired_state.jerk.z, _x.desired_state.snap.x, _x.desired_state.snap.y, _x.desired_state.snap.z, _x.desired_state.yaw, _x.desired_state.yaw_rate, _x.desired_state.yaw_acceleration, _x.state_estimate.header.seq, _x.state_estimate.header.stamp.secs, _x.state_estimate.header.stamp.nsecs,) = _get_struct_18d3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.state_estimate.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.state_estimate.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 105
      (_x.state_estimate.estimator_id, _x.state_estimate.position.x, _x.state_estimate.position.y, _x.state_estimate.position.z, _x.state_estimate.velocity.x, _x.state_estimate.velocity.y, _x.state_estimate.velocity.z, _x.state_estimate.orientation.x, _x.state_estimate.orientation.y, _x.state_estimate.orientation.z, _x.state_estimate.orientation.w, _x.state_estimate.bodyrates.x, _x.state_estimate.bodyrates.y, _x.state_estimate.bodyrates.z,) = _get_struct_b13d().unpack(str[start:end])
      self.command_execution_time.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_18d3I = None
def _get_struct_18d3I():
    global _struct_18d3I
    if _struct_18d3I is None:
        _struct_18d3I = struct.Struct("<18d3I")
    return _struct_18d3I
_struct_2b5I = None
def _get_struct_2b5I():
    global _struct_2b5I
    if _struct_2b5I is None:
        _struct_2b5I = struct.Struct("<2b5I")
    return _struct_2b5I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_b13d = None
def _get_struct_b13d():
    global _struct_b13d
    if _struct_b13d is None:
        _struct_b13d = struct.Struct("<b13d")
    return _struct_b13d
