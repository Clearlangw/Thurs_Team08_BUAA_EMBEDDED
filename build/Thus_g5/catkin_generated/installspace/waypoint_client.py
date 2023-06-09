#!/usr/bin/env python2

from __future__ import print_function
import sys
import rospy
from Thus_g5.srv import *

def waypoint_client(*args):
    rospy.wait_for_service('waypoint')
    try:
        service = rospy.ServiceProxy('waypoint', waypoint)
        res = service(**{
            "op": int(args[0]),
            "name": str(args[1]),
            "pos_x": float(args[2]),
            "pos_y": float(args[3]),
            "ori_z": float(args[4]),
            "ori_w": float(args[5]),

        })
        return res
    except rospy.ServiceException as e:
        print("Service call failed 88: %s"%e)

if __name__ == "__main__":
    res = waypoint_client(*sys.argv[1:])
    print(res)
    