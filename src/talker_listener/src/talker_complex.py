#!/usr/bin/env python3
import rospy
from complex_msgs.msg import Complex
from random import random

def talker():
	pub = rospy.Publisher('chatter_complex',Complex, queue_size=10)
	rospy.init_node('talker_complex',anonymous=True)
	rate = rospy.Rate(1)

	while not rospy.is_shutdown():
		
		msg = Complex()
		msg.real = random()
		msg.imaginary = random()
		rospy.loginfo(msg)
		pub.publish(msg)
		rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass