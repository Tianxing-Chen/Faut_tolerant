#pragma once
// MESSAGE ROTOR_CONTROL PACKING

#define MAVLINK_MSG_ID_ROTOR_CONTROL 13000


typedef struct __mavlink_rotor_control_t {
 float thrust; /*<  Collective mass normalized thrust [m/s^2]*/
 float mot_throttle[4]; /*<  Single rotor throttle [0-2000](PWM)*/
 float rotor_thrust[4]; /*<  Single rotor thrust*/
 uint8_t control_mode; /*<  Control mode as defined above*/
} mavlink_rotor_control_t;

#define MAVLINK_MSG_ID_ROTOR_CONTROL_LEN 37
#define MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN 37
#define MAVLINK_MSG_ID_13000_LEN 37
#define MAVLINK_MSG_ID_13000_MIN_LEN 37

#define MAVLINK_MSG_ID_ROTOR_CONTROL_CRC 146
#define MAVLINK_MSG_ID_13000_CRC 146

#define MAVLINK_MSG_ROTOR_CONTROL_FIELD_MOT_THROTTLE_LEN 4
#define MAVLINK_MSG_ROTOR_CONTROL_FIELD_ROTOR_THRUST_LEN 4

#if MAVLINK_COMMAND_24BIT
#define MAVLINK_MESSAGE_INFO_ROTOR_CONTROL { \
    13000, \
    "ROTOR_CONTROL", \
    4, \
    {  { "control_mode", NULL, MAVLINK_TYPE_UINT8_T, 0, 36, offsetof(mavlink_rotor_control_t, control_mode) }, \
         { "thrust", NULL, MAVLINK_TYPE_FLOAT, 0, 0, offsetof(mavlink_rotor_control_t, thrust) }, \
         { "mot_throttle", NULL, MAVLINK_TYPE_FLOAT, 4, 4, offsetof(mavlink_rotor_control_t, mot_throttle) }, \
         { "rotor_thrust", NULL, MAVLINK_TYPE_FLOAT, 4, 20, offsetof(mavlink_rotor_control_t, rotor_thrust) }, \
         } \
}
#else
#define MAVLINK_MESSAGE_INFO_ROTOR_CONTROL { \
    "ROTOR_CONTROL", \
    4, \
    {  { "control_mode", NULL, MAVLINK_TYPE_UINT8_T, 0, 36, offsetof(mavlink_rotor_control_t, control_mode) }, \
         { "thrust", NULL, MAVLINK_TYPE_FLOAT, 0, 0, offsetof(mavlink_rotor_control_t, thrust) }, \
         { "mot_throttle", NULL, MAVLINK_TYPE_FLOAT, 4, 4, offsetof(mavlink_rotor_control_t, mot_throttle) }, \
         { "rotor_thrust", NULL, MAVLINK_TYPE_FLOAT, 4, 20, offsetof(mavlink_rotor_control_t, rotor_thrust) }, \
         } \
}
#endif

/**
 * @brief Pack a rotor_control message
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 *
 * @param control_mode  Control mode as defined above
 * @param thrust  Collective mass normalized thrust [m/s^2]
 * @param mot_throttle  Single rotor throttle [0-2000](PWM)
 * @param rotor_thrust  Single rotor thrust
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_rotor_control_pack(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg,
                               uint8_t control_mode, float thrust, const float *mot_throttle, const float *rotor_thrust)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_ROTOR_CONTROL_LEN];
    _mav_put_float(buf, 0, thrust);
    _mav_put_uint8_t(buf, 36, control_mode);
    _mav_put_float_array(buf, 4, mot_throttle, 4);
    _mav_put_float_array(buf, 20, rotor_thrust, 4);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN);
#else
    mavlink_rotor_control_t packet;
    packet.thrust = thrust;
    packet.control_mode = control_mode;
    mav_array_memcpy(packet.mot_throttle, mot_throttle, sizeof(float)*4);
    mav_array_memcpy(packet.rotor_thrust, rotor_thrust, sizeof(float)*4);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN);
#endif

    msg->msgid = MAVLINK_MSG_ID_ROTOR_CONTROL;
    return mavlink_finalize_message(msg, system_id, component_id, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
}

/**
 * @brief Pack a rotor_control message on a channel
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message will be sent over
 * @param msg The MAVLink message to compress the data into
 * @param control_mode  Control mode as defined above
 * @param thrust  Collective mass normalized thrust [m/s^2]
 * @param mot_throttle  Single rotor throttle [0-2000](PWM)
 * @param rotor_thrust  Single rotor thrust
 * @return length of the message in bytes (excluding serial stream start sign)
 */
static inline uint16_t mavlink_msg_rotor_control_pack_chan(uint8_t system_id, uint8_t component_id, uint8_t chan,
                               mavlink_message_t* msg,
                                   uint8_t control_mode,float thrust,const float *mot_throttle,const float *rotor_thrust)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_ROTOR_CONTROL_LEN];
    _mav_put_float(buf, 0, thrust);
    _mav_put_uint8_t(buf, 36, control_mode);
    _mav_put_float_array(buf, 4, mot_throttle, 4);
    _mav_put_float_array(buf, 20, rotor_thrust, 4);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), buf, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN);
#else
    mavlink_rotor_control_t packet;
    packet.thrust = thrust;
    packet.control_mode = control_mode;
    mav_array_memcpy(packet.mot_throttle, mot_throttle, sizeof(float)*4);
    mav_array_memcpy(packet.rotor_thrust, rotor_thrust, sizeof(float)*4);
        memcpy(_MAV_PAYLOAD_NON_CONST(msg), &packet, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN);
#endif

    msg->msgid = MAVLINK_MSG_ID_ROTOR_CONTROL;
    return mavlink_finalize_message_chan(msg, system_id, component_id, chan, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
}

/**
 * @brief Encode a rotor_control struct
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param msg The MAVLink message to compress the data into
 * @param rotor_control C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_rotor_control_encode(uint8_t system_id, uint8_t component_id, mavlink_message_t* msg, const mavlink_rotor_control_t* rotor_control)
{
    return mavlink_msg_rotor_control_pack(system_id, component_id, msg, rotor_control->control_mode, rotor_control->thrust, rotor_control->mot_throttle, rotor_control->rotor_thrust);
}

/**
 * @brief Encode a rotor_control struct on a channel
 *
 * @param system_id ID of this system
 * @param component_id ID of this component (e.g. 200 for IMU)
 * @param chan The MAVLink channel this message will be sent over
 * @param msg The MAVLink message to compress the data into
 * @param rotor_control C-struct to read the message contents from
 */
static inline uint16_t mavlink_msg_rotor_control_encode_chan(uint8_t system_id, uint8_t component_id, uint8_t chan, mavlink_message_t* msg, const mavlink_rotor_control_t* rotor_control)
{
    return mavlink_msg_rotor_control_pack_chan(system_id, component_id, chan, msg, rotor_control->control_mode, rotor_control->thrust, rotor_control->mot_throttle, rotor_control->rotor_thrust);
}

/**
 * @brief Send a rotor_control message
 * @param chan MAVLink channel to send the message
 *
 * @param control_mode  Control mode as defined above
 * @param thrust  Collective mass normalized thrust [m/s^2]
 * @param mot_throttle  Single rotor throttle [0-2000](PWM)
 * @param rotor_thrust  Single rotor thrust
 */
#ifdef MAVLINK_USE_CONVENIENCE_FUNCTIONS

static inline void mavlink_msg_rotor_control_send(mavlink_channel_t chan, uint8_t control_mode, float thrust, const float *mot_throttle, const float *rotor_thrust)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char buf[MAVLINK_MSG_ID_ROTOR_CONTROL_LEN];
    _mav_put_float(buf, 0, thrust);
    _mav_put_uint8_t(buf, 36, control_mode);
    _mav_put_float_array(buf, 4, mot_throttle, 4);
    _mav_put_float_array(buf, 20, rotor_thrust, 4);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_ROTOR_CONTROL, buf, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
#else
    mavlink_rotor_control_t packet;
    packet.thrust = thrust;
    packet.control_mode = control_mode;
    mav_array_memcpy(packet.mot_throttle, mot_throttle, sizeof(float)*4);
    mav_array_memcpy(packet.rotor_thrust, rotor_thrust, sizeof(float)*4);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_ROTOR_CONTROL, (const char *)&packet, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
#endif
}

/**
 * @brief Send a rotor_control message
 * @param chan MAVLink channel to send the message
 * @param struct The MAVLink struct to serialize
 */
static inline void mavlink_msg_rotor_control_send_struct(mavlink_channel_t chan, const mavlink_rotor_control_t* rotor_control)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    mavlink_msg_rotor_control_send(chan, rotor_control->control_mode, rotor_control->thrust, rotor_control->mot_throttle, rotor_control->rotor_thrust);
#else
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_ROTOR_CONTROL, (const char *)rotor_control, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
#endif
}

#if MAVLINK_MSG_ID_ROTOR_CONTROL_LEN <= MAVLINK_MAX_PAYLOAD_LEN
/*
  This varient of _send() can be used to save stack space by re-using
  memory from the receive buffer.  The caller provides a
  mavlink_message_t which is the size of a full mavlink message. This
  is usually the receive buffer for the channel, and allows a reply to an
  incoming message with minimum stack space usage.
 */
static inline void mavlink_msg_rotor_control_send_buf(mavlink_message_t *msgbuf, mavlink_channel_t chan,  uint8_t control_mode, float thrust, const float *mot_throttle, const float *rotor_thrust)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    char *buf = (char *)msgbuf;
    _mav_put_float(buf, 0, thrust);
    _mav_put_uint8_t(buf, 36, control_mode);
    _mav_put_float_array(buf, 4, mot_throttle, 4);
    _mav_put_float_array(buf, 20, rotor_thrust, 4);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_ROTOR_CONTROL, buf, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
#else
    mavlink_rotor_control_t *packet = (mavlink_rotor_control_t *)msgbuf;
    packet->thrust = thrust;
    packet->control_mode = control_mode;
    mav_array_memcpy(packet->mot_throttle, mot_throttle, sizeof(float)*4);
    mav_array_memcpy(packet->rotor_thrust, rotor_thrust, sizeof(float)*4);
    _mav_finalize_message_chan_send(chan, MAVLINK_MSG_ID_ROTOR_CONTROL, (const char *)packet, MAVLINK_MSG_ID_ROTOR_CONTROL_MIN_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN, MAVLINK_MSG_ID_ROTOR_CONTROL_CRC);
#endif
}
#endif

#endif

// MESSAGE ROTOR_CONTROL UNPACKING


/**
 * @brief Get field control_mode from rotor_control message
 *
 * @return  Control mode as defined above
 */
static inline uint8_t mavlink_msg_rotor_control_get_control_mode(const mavlink_message_t* msg)
{
    return _MAV_RETURN_uint8_t(msg,  36);
}

/**
 * @brief Get field thrust from rotor_control message
 *
 * @return  Collective mass normalized thrust [m/s^2]
 */
static inline float mavlink_msg_rotor_control_get_thrust(const mavlink_message_t* msg)
{
    return _MAV_RETURN_float(msg,  0);
}

/**
 * @brief Get field mot_throttle from rotor_control message
 *
 * @return  Single rotor throttle [0-2000](PWM)
 */
static inline uint16_t mavlink_msg_rotor_control_get_mot_throttle(const mavlink_message_t* msg, float *mot_throttle)
{
    return _MAV_RETURN_float_array(msg, mot_throttle, 4,  4);
}

/**
 * @brief Get field rotor_thrust from rotor_control message
 *
 * @return  Single rotor thrust
 */
static inline uint16_t mavlink_msg_rotor_control_get_rotor_thrust(const mavlink_message_t* msg, float *rotor_thrust)
{
    return _MAV_RETURN_float_array(msg, rotor_thrust, 4,  20);
}

/**
 * @brief Decode a rotor_control message into a struct
 *
 * @param msg The message to decode
 * @param rotor_control C-struct to decode the message contents into
 */
static inline void mavlink_msg_rotor_control_decode(const mavlink_message_t* msg, mavlink_rotor_control_t* rotor_control)
{
#if MAVLINK_NEED_BYTE_SWAP || !MAVLINK_ALIGNED_FIELDS
    rotor_control->thrust = mavlink_msg_rotor_control_get_thrust(msg);
    mavlink_msg_rotor_control_get_mot_throttle(msg, rotor_control->mot_throttle);
    mavlink_msg_rotor_control_get_rotor_thrust(msg, rotor_control->rotor_thrust);
    rotor_control->control_mode = mavlink_msg_rotor_control_get_control_mode(msg);
#else
        uint8_t len = msg->len < MAVLINK_MSG_ID_ROTOR_CONTROL_LEN? msg->len : MAVLINK_MSG_ID_ROTOR_CONTROL_LEN;
        memset(rotor_control, 0, MAVLINK_MSG_ID_ROTOR_CONTROL_LEN);
    memcpy(rotor_control, _MAV_PAYLOAD(msg), len);
#endif
}
