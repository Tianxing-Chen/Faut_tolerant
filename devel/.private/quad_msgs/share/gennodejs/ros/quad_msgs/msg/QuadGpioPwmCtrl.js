// Auto-generated. Do not edit!

// (in-package quad_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class QuadGpioPwmCtrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.device = null;
      this.channel = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = 0;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuadGpioPwmCtrl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [device]
    bufferOffset = _serializer.uint8(obj.device, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float32(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuadGpioPwmCtrl
    let len;
    let data = new QuadGpioPwmCtrl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [device]
    data.device = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'quad_msgs/QuadGpioPwmCtrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc150882d4dd0ef7629ae2efcdbe50fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Control message for GPIO and servo controllers atttached to the FMU
    #
    
    Header header
    
    # Device ID: Selects the device to which the commands are forwarded. Following device IDs are valid:
    # PX4FMU GPIOs (only GPIO_EXT2 can be used; GPIO_EXT1 is reserved for timesynchronization)
    uint8 DEVICE_FMU=0
    
    # PCA9685 PWM controller chip: This device is mounted on the PWR board and connected to the FMU through I2C.
    # For different addresses can be set for the chip with two jumpers on the PWR board (A0, A1): 
    # Address 0x40 (default)
    uint8 DEVICE_PCA9685_0=1
    # Address 0x41
    uint8 DEVICE_PCA9685_1=2
    # Address 0x42
    uint8 DEVICE_PCA9685_2=3
    # Address 0x43
    uint8 DEVICE_PCA9685_3=4
    
    # Device ID:
    uint8 device
    
    
    # Channel: Selects the GPIO or the PWM channel
    # For DEVICE_FMU:  {2}
    # For DEVICE_PCA9685: [0, 7]
    uint8 channel
    
    
    # Value which should be assigned to the selected channel.
    # For a GPIO: {0,1}
    # For a Servo pitch: [10.0, 11.0]
    # For a PWM Duty cycle: [20.0f, 21.0f]
    float32 value
    
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuadGpioPwmCtrl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.device !== undefined) {
      resolved.device = msg.device;
    }
    else {
      resolved.device = 0
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

// Constants for message
QuadGpioPwmCtrl.Constants = {
  DEVICE_FMU: 0,
  DEVICE_PCA9685_0: 1,
  DEVICE_PCA9685_1: 2,
  DEVICE_PCA9685_2: 3,
  DEVICE_PCA9685_3: 4,
}

module.exports = QuadGpioPwmCtrl;
