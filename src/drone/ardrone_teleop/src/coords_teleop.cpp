#include "ros/ros.h"
#include "tf/tfMessage.h"
#include "ardrone_autonomy/Navdata.h"
#include "geometry_msgs/Twist.h"
#include <functional>


void tf_callback(const boost::shared_ptr<tf::tfMessage const>& msg, double* linear_coords)
{
    linear_coords[0] = msg->transforms[0].transform.translation.x;
    linear_coords[1] = msg->transforms[0].transform.translation.y; 
    linear_coords[2] = msg->transforms[1].transform.translation.z;
}

void navdata_callback(const boost::shared_ptr<ardrone_autonomy::Navdata const>& msg, double* angular_coords)
{
    angular_coords[0] = msg->rotX;
    angular_coords[1] = msg->rotY;
    angular_coords[2] = msg->rotZ;
}

void PID(geometry_msgs::Twist& twist, double* necessary_coords, double* linear_coords)
{
    float K_P = 0.01;
    twist.linear.x = K_P * (necessary_coords[0] - linear_coords[0]);
    twist.linear.y = K_P * (necessary_coords[1] - linear_coords[1]);
    twist.linear.z = 2 * K_P * (necessary_coords[2] - linear_coords[2]);
}


int main(int argc, char** argv)
{
    double necessary_coords[3], linear_coords[3], angular_coords[3];
    ros::init(argc, argv, "coords_teleop");
    ros::NodeHandle _nh;
    ros::Subscriber _sub_tf = _nh.subscribe<tf::tfMessage>("/tf", 1, 
        boost::bind(tf_callback, _1, linear_coords));
    ros::Subscriber _sub_navdata = _nh.subscribe<ardrone_autonomy::Navdata>("/ardrone/navdata", 1, 
        boost::bind(navdata_callback, _1, angular_coords));
    ros::Publisher _pub_twist = _nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1);
    if (argc == 4)
        for (size_t i = 0; i < 3; i++)
            necessary_coords[i] = atof(argv[i + 1]);
    else
        for (size_t i = 0; i < 3; i++)
            necessary_coords[i] = 0;
    geometry_msgs::Twist twist;
    system("rostopic pub -1 /ardrone/takeoff std_msgs/Empty");
    while (ros::ok())
    {
        PID(twist, necessary_coords, linear_coords);
        _pub_twist.publish(twist);
        ROS_INFO("%f, %f, %f", necessary_coords[0], necessary_coords[1], necessary_coords[2]);
        ROS_INFO("twist: %f, %f, %f", linear_coords[0], linear_coords[1], linear_coords[2]);
        ros::spinOnce();
    }
}
