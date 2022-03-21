#!/usr/bin/env python3

import rospy
import sys
from adding_integers.srv import AddTwoInt
from adding_integers.srv import AddTwoIntResponse

def add_two_int_client(x, y):
	rospy.wait_for_service('add_two_int')
	try:
		add_two_int = rospy.ServiceProxy('add_two_int', AddTwoInt)
		response = add_two_int(x, y)
		return response.sum
	except rospy.ServiceException(e):
		print("Service call failed : %s" %e)



if __name__ == '__main__':
    if len(sys.argv )== 3:
    	x = int(sys.argv[1])
    	y = int(sys.argv[2])
    else:
    	print("%s [x,y]" %sys.argv[0])
    	sys.exit(1)
    print ("Requesting %s+%s" %(x, y))
    s = add_two_int_client(x, y)
    print ("%s + %s = %s" %(x, y, s))