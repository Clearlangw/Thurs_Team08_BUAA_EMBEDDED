#!/usr/bin/env python2

from __future__ import print_function
import sys
import rospy
from Thus_g5.srv import *

def nav_client(*args):
    rospy.wait_for_service('nav')
    try:
        service = rospy.ServiceProxy('nav', nav_goal)
        res = service(**{
            "goal": str(args[0]),

        })
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    res = nav_client(*sys.argv[1:])
    print(res)
    