#!/usr/bin/env python3

import rospy
from complex_msgs.msg import Complex


def chatter_callback(message):
	print ("I heard %s" % message)

def listener():
	rospy.init_node('listener_complex', anonymous=True)
	rospy.Subscriber('chatter_complex',Complex, chatter_callback)
	rospy.spin()

if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass