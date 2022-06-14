/** @file
 *	@brief MAVLink comm testsuite protocol generated from AVSSUAS.xml
 *	@see http://mavlink.org
 */

#pragma once

#include <gtest/gtest.h>
#include "AVSSUAS.hpp"

#ifdef TEST_INTEROP
using namespace mavlink;
#undef MAVLINK_HELPER
#include "mavlink.h"
#endif


TEST(AVSSUAS, AVSS_PRS_SYS_STATUS)
{
    mavlink::mavlink_message_t msg;
    mavlink::MsgMap map1(msg);
    mavlink::MsgMap map2(msg);

    mavlink::AVSSUAS::msg::AVSS_PRS_SYS_STATUS packet_in{};
    packet_in.arm_status = 163;
    packet_in.battery_status = 17651;
    packet_in.error_status = 963497464;
    packet_in.change_status = 230;
    packet_in.time_boot_ms = 963497672;

    mavlink::AVSSUAS::msg::AVSS_PRS_SYS_STATUS packet1{};
    mavlink::AVSSUAS::msg::AVSS_PRS_SYS_STATUS packet2{};

    packet1 = packet_in;

    //std::cout << packet1.to_yaml() << std::endl;

    packet1.serialize(map1);

    mavlink::mavlink_finalize_message(&msg, 1, 1, packet1.MIN_LENGTH, packet1.LENGTH, packet1.CRC_EXTRA);

    packet2.deserialize(map2);

    EXPECT_EQ(packet1.arm_status, packet2.arm_status);
    EXPECT_EQ(packet1.battery_status, packet2.battery_status);
    EXPECT_EQ(packet1.error_status, packet2.error_status);
    EXPECT_EQ(packet1.change_status, packet2.change_status);
    EXPECT_EQ(packet1.time_boot_ms, packet2.time_boot_ms);
}

#ifdef TEST_INTEROP
TEST(AVSSUAS_interop, AVSS_PRS_SYS_STATUS)
{
    mavlink_message_t msg;

    // to get nice print
    memset(&msg, 0, sizeof(msg));

    mavlink_avss_prs_sys_status_t packet_c {
         963497464, 963497672, 17651, 163, 230
    };

    mavlink::AVSSUAS::msg::AVSS_PRS_SYS_STATUS packet_in{};
    packet_in.arm_status = 163;
    packet_in.battery_status = 17651;
    packet_in.error_status = 963497464;
    packet_in.change_status = 230;
    packet_in.time_boot_ms = 963497672;

    mavlink::AVSSUAS::msg::AVSS_PRS_SYS_STATUS packet2{};

    mavlink_msg_avss_prs_sys_status_encode(1, 1, &msg, &packet_c);

    // simulate message-handling callback
    [&packet2](const mavlink_message_t *cmsg) {
        MsgMap map2(cmsg);

        packet2.deserialize(map2);
    } (&msg);

    EXPECT_EQ(packet_in.arm_status, packet2.arm_status);
    EXPECT_EQ(packet_in.battery_status, packet2.battery_status);
    EXPECT_EQ(packet_in.error_status, packet2.error_status);
    EXPECT_EQ(packet_in.change_status, packet2.change_status);
    EXPECT_EQ(packet_in.time_boot_ms, packet2.time_boot_ms);

#ifdef PRINT_MSG
    PRINT_MSG(msg);
#endif
}
#endif
