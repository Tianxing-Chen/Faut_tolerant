// MESSAGE AVSS_PRS_SYS_STATUS support class

#pragma once

namespace mavlink {
namespace AVSSUAS {
namespace msg {

/**
 * @brief AVSS_PRS_SYS_STATUS message
 *
 *  AVSS PRS system status.
 */
struct AVSS_PRS_SYS_STATUS : mavlink::Message {
    static constexpr msgid_t MSG_ID = 60050;
    static constexpr size_t LENGTH = 12;
    static constexpr size_t MIN_LENGTH = 12;
    static constexpr uint8_t CRC_EXTRA = 153;
    static constexpr auto NAME = "AVSS_PRS_SYS_STATUS";


    uint8_t arm_status; /*<  PRS arm statuses */
    uint16_t battery_status; /*<  Estimated battery run-time without a remote connection and PRS battery voltage */
    uint32_t error_status; /*<  PRS error statuses */
    uint8_t change_status; /*<  PRS battery change statuses */
    uint32_t time_boot_ms; /*<  Time since PRS system boot */


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
        ss << "  arm_status: " << +arm_status << std::endl;
        ss << "  battery_status: " << battery_status << std::endl;
        ss << "  error_status: " << error_status << std::endl;
        ss << "  change_status: " << +change_status << std::endl;
        ss << "  time_boot_ms: " << time_boot_ms << std::endl;

        return ss.str();
    }

    inline void serialize(mavlink::MsgMap &map) const override
    {
        map.reset(MSG_ID, LENGTH);

        map << error_status;                  // offset: 0
        map << time_boot_ms;                  // offset: 4
        map << battery_status;                // offset: 8
        map << arm_status;                    // offset: 10
        map << change_status;                 // offset: 11
    }

    inline void deserialize(mavlink::MsgMap &map) override
    {
        map >> error_status;                  // offset: 0
        map >> time_boot_ms;                  // offset: 4
        map >> battery_status;                // offset: 8
        map >> arm_status;                    // offset: 10
        map >> change_status;                 // offset: 11
    }
};

} // namespace msg
} // namespace AVSSUAS
} // namespace mavlink
