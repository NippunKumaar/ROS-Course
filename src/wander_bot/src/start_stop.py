#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

cmd_vel_pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)
rospy.init_node('red_light_green_light')

stop = Twist()
start = Twist()
start.linear.x = 0.1

driving_forward = False
light_change_time = rospy.Time.now()
rate = rospy.Rate(10)

while not rospy.is_shutdown():
	if driving_forward:
		cmd_vel_pub.publish(start)
	else:
		cmd_vel_pub.publish(stop)
	if light_change_time < rospy.Time.now():
		driving_forward = not driving_forward
		light_change_time = rospy.Time.now() + rospy.Duration(3)
	rate.sleep()