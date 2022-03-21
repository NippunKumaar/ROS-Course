#!/usr/bin/env python3

import rospy
from adding_integers.srv import AddTwoInt
from adding_integers.srv import AddTwoIntResponse

def handle_add_two_ints(req):
    print("Returning[%s + %s = %s]" %(req.x, req.y, (req.x+req.y)))
    return AddTwoIntResponse(req.x+req.y)

def add_two_int_server():
    rospy.init_node('add_two_int_server')
    service = rospy.Service('add_two_int', AddTwoInt, handle_add_two_ints)
    print("Ready to add two int")
    rospy.spin()


if __name__ == '__main__':
    try:
        add_two_int_server()
    except rospy.ROSInterruptException:
        pass