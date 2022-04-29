#!/usr/bin/env python3

import tty
import sys
import termios
import rospy
from std_msgs.msg import String

key_pub = rospy.Publisher('keys', String, queue_size=1)
rospy.init_node("keyboard_driver")
rate = rospy.Rate(100)

orig_settings = termios.tcgetattr(sys.stdin)
tty.setcbreak(sys.stdin)
print ("Publishing keystrokes. Press Ctrl-C to exit...")
x = 0
while not rospy.is_shutdown():
	x = sys.stdin.read(1)[0]
	key_pub.publish(x)
	print("You pressed", x)
	rate.sleep()

termios.tcsetattr(sys.stdin, termios.TCSADRAIN, orig_settings)  