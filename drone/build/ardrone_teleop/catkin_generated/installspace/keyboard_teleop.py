#!/usr/bin/env python

import rospy
import roslib; roslib.load_manifest("ardrone_teleop")
from std_msgs import Empty
from geometry_msgs.msg import Twist

from pynput.keyboard import Key, KeyCode, Listener


keys_attrs = {
    KeyCode.from_char("w"): ("linear", "x", 1),
    KeyCode.from_char("s"): ("linear", "x", -1),
    KeyCode.from_char("a"): ("linear", "y", -1),
    KeyCode.from_char("d"): ("linear", "y", 1),
    Key.up: ("linear", "z", 1),
    Key.down: ("linear", "z", -1),
    Key.left: ("angular", "z", 1),
    Key.right: ("angular", "z", -1)
}


def on_press(key, pub, twist):
    if key in keys_attrs:
        setattr(getattr(twist, keys_attrs[key][0]), keys_attrs[key][1], keys_attrs[key][2])
    pub.publish(twist)

def on_release(key, pub, twist):
    if key == Key.esc:
        # Stop listener
        return False
    if key in keys_attrs:
        setattr(getattr(twist, keys_attrs[key][0]), keys_attrs[key][1], 0)
    pub.publish(twist)


 
def talker():
    pub = rospy.Publisher("cmd_vel", Twist, queue_size=1)
    rospy.init_node("keyboard_teleop", anonymous=True)
    twist = Twist()

    pub_takeoff = rospy.Publisher("/ardrone/takeoff", Empty, queue_size=1)
    empty = Empty()
    pub_takeoff.publish(empty)  

    with Listener(
        on_press=lambda key: on_press(key, pub, twist),
        on_release=lambda key: on_release(key, pub, twist)
        ) as listener:
            listener.join()

 
if __name__ == '__main__':
     try:
         talker()
     except rospy.ROSInterruptException:
         pass

