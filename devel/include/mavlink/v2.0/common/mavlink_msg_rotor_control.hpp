// MESSAGE ROTOR_CONTROL support class

#pragma once

namespace mavlink {
namespace common {
namespace msg {

/**
 * @brief ROTOR_CONTROL message
 *
 * This message is sent to a low level controller on the quadrotor
 */
struct ROTOR_CONTROL : mavlink::Message {
    static constexpr msgid_t MSG_ID = 13000;
    static constexpr size_t LENGTH = 37;
    static constexpr size_t MIN_LENGTH = 37;
    static constexpr uint8_t CRC_EXTRA = 146;
    static constexpr auto NAME = "ROTOR_CONTROL";


    uint8_t control_mode; /*<  Control mode as defined above */
    float thrust; /*<  Collective mass normalized thrust [m/s^2] */
    std::array<float, 4> mot_throttle; /*<  Single rotor throttle [0-2000](PWM) */
    std::array<float, 4> rotor_thrust; /*<  Single rotor thrust */


    inline std::string get_name(void) const override
    {
            return NAME;
    }

    inline Info get_message_info(void) const override
    {
            return { MSG_ID, LENGTH, MIN_LENGTH, CRC_EXTRA };
    }

    inline std::string to_yaml(void) const override
    {
        std::stringstream ss;

        ss << NAME << ":" << std::endl;
        ss << "  control_mode: " << +control_mode << std::endl;
        ss << "  thrust: " << thrust << std::endl;
        ss << "  mot_throttle: [" << to_string(mot_throttle) << "]" << std::endl;
        ss << "  rotor_thrust: [" << to_string(rotor_thrust) << "]" << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << thrust;                        // offset: 0
        map << mot_throttle;                  // offset: 4
        map << rotor_thrust;                  // offset: 20
        map << control_mode;                  // offset: 36
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> thrust;                        // offset: 0
        map >> mot_throttle;                  // offset: 4
        map >> rotor_thrust;                  // offset: 20
        map >> control_mode;                  // offset: 36
    }
};

} // namespace msg
} // namespace common
} // namespace mavlink
