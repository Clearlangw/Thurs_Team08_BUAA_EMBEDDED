#!/usr/bin/env python2

from __future__ import print_function
import sys
import rospy
from Thus_g5.srv import *

def grab_server_client(*args):
    rospy.wait_for_service('grab_server')
    try:
        service = rospy.ServiceProxy('grab_server', grab_object)
        res = service(**{
            "goal": str(args[0]),

        })
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    res = grab_server_client(*sys.argv[1:])
    print(res)
    