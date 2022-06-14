/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>

mavros_msgs::State current_state;
void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node4");

    //uav0
    ros::NodeHandle nh0;
    ros::Subscriber state_sub0 = nh0.subscribe<mavros_msgs::State>
            ("uav0/mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub0 = nh0.advertise<geometry_msgs::PoseStamped>
            ("/uav0/mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client0 = nh0.serviceClient<mavros_msgs::CommandBool>
            ("/uav0/mavros/cmd/arming");
    ros::ServiceClient set_mode_client0 = nh0.serviceClient<mavros_msgs::SetMode>
            ("/uav0/mavros/set_mode");

    //uav1
    ros::NodeHandle nh1;
    ros::Subscriber state_sub1 = nh1.subscribe<mavros_msgs::State>
            ("uav1/mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub1 = nh1.advertise<geometry_msgs::PoseStamped>
            ("/uav1/mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client1 = nh1.serviceClient<mavros_msgs::CommandBool>
            ("/uav1/mavros/cmd/arming");
    ros::ServiceClient set_mode_client1 = nh1.serviceClient<mavros_msgs::SetMode>
            ("/uav1/mavros/set_mode");

    //uav2
    ros::NodeHandle nh2;
    ros::Subscriber state_sub2 = nh2.subscribe<mavros_msgs::State>
            ("uav2/mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub2 = nh2.advertise<geometry_msgs::PoseStamped>
            ("/uav2/mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client2 = nh2.serviceClient<mavros_msgs::CommandBool>
            ("/uav2/mavros/cmd/arming");
    ros::ServiceClient set_mode_client2 = nh2.serviceClient<mavros_msgs::SetMode>
            ("/uav2/mavros/set_mode");

    //uav3
    ros::NodeHandle nh3;
    ros::Subscriber state_sub3 = nh3.subscribe<mavros_msgs::State>
            ("uav3/mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub3 = nh3.advertise<geometry_msgs::PoseStamped>
            ("/uav3/mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client3 = nh3.serviceClient<mavros_msgs::CommandBool>
            ("/uav3/mavros/cmd/arming");
    ros::ServiceClient set_mode_client3 = nh3.serviceClient<mavros_msgs::SetMode>
            ("/uav3/mavros/set_mode");

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);

    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }

    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";

    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;

    ros::Time last_request = ros::Time::now();

    while(ros::ok()){
        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            if( set_mode_client0.call(offb_set_mode) &&
                set_mode_client1.call(offb_set_mode) &&
                set_mode_client2.call(offb_set_mode) &&
                set_mode_client3.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled : 4");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client0.call(arm_cmd) &&
                    arming_client1.call(arm_cmd) &&
                    arming_client2.call(arm_cmd) &&
                    arming_client3.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed : 4");
                }
                last_request = ros::Time::now();
            }
        }
        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
