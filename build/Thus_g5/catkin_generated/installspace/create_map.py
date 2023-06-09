#!/usr/bin/env python2

from PIL import Image
from Thus_g5.srv import *
import os, glob, argparse, rospy

NAME = 'create_map_server'

def work(req):
    map_name = req.name
    in_path = req.file_path
    out_path = req.image_path
    if in_path[-1] != '/':
        in_path += '/'
    if out_path[-1] != '/':
        out_path += '/'
    if not os.path.exists(in_path): # 创建保存 pgm 文件的路径
        os.makedirs(in_path)
    # print('map_name', map_name)
    print('in_path', in_path)
    print('out_path', out_path)
    cmds = []
    cmds.append('cd ' + in_path)
    cmds.append('rosrun map_server map_saver -f ' + map_name) # 建图
    cmd = ' && '.join(cmds)
    if not os.path.exists(out_path): # 创建保存 jpg 文件的路径
        os.makedirs(out_path)
    os.system(cmd)
    for files in glob.glob(in_path + map_name + '.pgm'): # 遍历所有 pgm 文件
        filepath, filename = os.path.split(files)
        out_file = filename.replace('pgm', 'jpg')
        im = Image.open(files)
        im = im.crop([1870, 1900, 2130, 2100])  # map size is 4000 * 4000 裁剪图片
        im = im.resize([im.size[0] * 3, im.size[1] * 3]) # 放大图片
        new_path = os.path.join(out_path, out_file)
        im.save(os.path.join(out_path, out_file))
    # print('OK')
    return create_mapResponse(1)

def create_map_server():
    rospy.init_node(NAME)
    s = rospy.Service('create_map', create_map, work)
    # spin() keeps Python from exiting until node is shutdown
    rospy.spin()


if __name__ == '__main__':
    create_map_server()
