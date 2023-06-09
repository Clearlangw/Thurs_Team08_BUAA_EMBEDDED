#!/usr/bin/env python3
import rospy
import requests
from std_msgs.msg import String
# 定义请求URL和JSON数据
def turingChat(question):
    url = "http://openapi.turingapi.com/openapi/api/v2"
    json_data = {
        "reqType": 0,
        "perception": {
            "inputText": {
                "text": question
            },
        },
        "userInfo": {
            "apiKey": "f41c6535c228448dbc566abd9cb36127",
            "userId": "18262"
        }
    }

    # 发送POST请求
    response = requests.post(url, json=json_data)

    # 提取输出结果中的text值
    result = response.json()["results"][0]["values"]["text"]
    return result

rospy.init_node('chatRequests')
response_publisher = rospy.Publisher('chatBack',String,queue_size=1000)


# 解析输入字符串，匹配并发布应答字符串
def callback(data):
    input = data.data
    response = turingChat(data.data)
    
    # rospy.loginfo("I heard:: %s",data.data)
    rospy.loginfo("I spoke:: %s",response)
    response_publisher.publish(response)

# 订阅用于语音识别的语音字符
def listener():
    rospy.loginfo("Starting ROS turingChat Server")
    rospy.Subscriber("chatContent", String, callback)
    rospy.spin()

if __name__ == '__main__':  
    listener()