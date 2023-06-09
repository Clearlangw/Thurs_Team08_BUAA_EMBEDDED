#!/usr/bin/env python2

from __future__ import print_function
import sys
import rospy
from Thus_g5.srv import *

def vel_ctrl_server_client(*args):
    rospy.wait_for_service('vel_ctrl_server')
    try:
        service = rospy.ServiceProxy('vel_ctrl_server', vel_ctrl)
        res = service(**{
            "dx": int(args[0]),
            "dy": int(args[1]),
            "dth": int(args[2]),
            "flag": int(args[3]),

        })
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    res = vel_ctrl_server_client(*sys.argv[1:])
    print(res)
    