#!/usr/bin/env python2

from __future__ import print_function
import sys
import rospy
from Thus_g5.srv import *

def create_map_client(*args):
    rospy.wait_for_service('create_map')
    try:
        service = rospy.ServiceProxy('create_map', create_map)
        res = service(**{
            "name": str(args[0]),
            "file_path": str(args[1]),
            "image_path": str(args[2]),

        })
        return res
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

if __name__ == "__main__":
    res = create_map_client(*sys.argv[1:])
    print('Client End')
    print(res)
    
