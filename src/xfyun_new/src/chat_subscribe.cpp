/*
* 语音合成（Text To Speech，TTS）技术能够自动将任意文字实时转换为连续的
* 自然语音，是一种能够在任何时间、任何地点，向任何人提供语音信息服务的
* 高效便捷手段，非常符合信息时代海量数据、动态更新和个性化查询的需求。
*/
#include <iostream>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include "ros/ros.h"
#include "xfyun_new/bridgeToBack.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <fstream>
#include <termios.h>
#include <map>
#include <vector>
#include <cstring>
#include "xfyun_new/qtts.h"
#include "xfyun_new/msp_cmn.h"
#include "xfyun_new/msp_errors.h"
#include <sound_play/SoundRequest.h>
static int  waitback;
static int voice_state;
#define VOICE_INIT 0
#define VOICE_LISTEN 1
#define VOICE_WAKE 2
#define VOICE_CHAT 3
#define VOICE_SERVICE_INIT 4
#define VOICE_SERVICE_NEXT 5
#define VOICE_TASK 6
#define VOICE_APPOINT_INIT 7
#define VOICE_APPOINT_NEXT 8
#define VOICE_APPOINT_TIME 9
#define VOICE_APPOINT_TARGET 10
#define VOICE_TASK_OFF 11
#define VOICE_KEYBOARD 12
#define VOICE_TASK_DOING 13
using namespace std;
static ros::Publisher back_pub;
static ros::Publisher play_pub;
static ros::Publisher chat_pub;
std::string chattext;
std::string backtext;
bool done_flag = false;
bool chatsub_called = false; 
bool backsub_called = false; 
/* wav音频头部格式 */
typedef struct _wave_pcm_hdr
{
	char            riff[4];                // = "RIFF"
	int		size_8;                 // = FileSize - 8
	char            wave[4];                // = "WAVE"
	char            fmt[4];                 // = "fmt "
	int		fmt_size;		// = 下一个结构体的大小 : 16

	short int       format_tag;             // = PCM : 1
	short int       channels;               // = 通道数 : 1
	int		samples_per_sec;        // = 采样率 : 8000 | 6000 | 11025 | 16000
	int		avg_bytes_per_sec;      // = 每秒字节数 : samples_per_sec * bits_per_sample / 8
	short int       block_align;            // = 每采样点字节数 : wBitsPerSample / 8
	short int       bits_per_sample;        // = 量化比特数: 8 | 16

	char            data[4];                // = "data";
	int		data_size;              // = 纯数据长度 : FileSize - 44 
} wave_pcm_hdr;

/* 默认wav音频头部数据 */
wave_pcm_hdr default_wav_hdr = 
{
	{ 'R', 'I', 'F', 'F' },
	0,
	{'W', 'A', 'V', 'E'},
	{'f', 'm', 't', ' '},
	16,
	1,
	1,
	16000,
	32000,
	2,
	16,
	{'d', 'a', 't', 'a'},
	0  
};

std::string to_string(int val) 
{
    char buf[20];
    sprintf(buf, "%d", val);
    return std::string(buf);
}


/* 文本合成 */
int text_to_speech(const char* src_text, const char* des_path, const char* params)
{
	int          ret          = -1;
	FILE*        fp           = NULL;
	const char*  sessionID    = NULL;
	unsigned int audio_len    = 0;
	wave_pcm_hdr wav_hdr      = default_wav_hdr;
	int          synth_status = MSP_TTS_FLAG_STILL_HAVE_DATA;

	if (NULL == src_text || NULL == des_path)
	{
		printf("params is error!\n");
		return ret;
	}
	fp = fopen(des_path, "wb");
	if (NULL == fp)
	{
		printf("open %s error.\n", des_path);
		return ret;
	}
	/* 开始合成 */
	sessionID = QTTSSessionBegin(params, &ret);
	if (MSP_SUCCESS != ret)
	{
		printf("QTTSSessionBegin failed, error code: %d.\n", ret);
		fclose(fp);
		return ret;
	}
	ret = QTTSTextPut(sessionID, src_text, (unsigned int)strlen(src_text), NULL);
	if (MSP_SUCCESS != ret)
	{
		printf("QTTSTextPut failed, error code: %d.\n",ret);
		QTTSSessionEnd(sessionID, "TextPutError");
		fclose(fp);
		return ret;
	}
	printf("正在合成 ...\n");
	fwrite(&wav_hdr, sizeof(wav_hdr) ,1, fp); //添加wav音频头，使用采样率为16000
	while (1) 
	{
		/* 获取合成音频 */
		const void* data = QTTSAudioGet(sessionID, &audio_len, &synth_status, &ret);
		if (MSP_SUCCESS != ret)
			break;
		if (NULL != data)
		{
			fwrite(data, audio_len, 1, fp);
		    wav_hdr.data_size += audio_len; //计算data_size大小
		}
		if (MSP_TTS_FLAG_DATA_END == synth_status)
			break;
		printf(">");
		usleep(150*1000); //防止频繁占用CPU
	}
	printf("\n");
	if (MSP_SUCCESS != ret)
	{
		printf("QTTSAudioGet failed, error code: %d.\n",ret);
		QTTSSessionEnd(sessionID, "AudioGetError");
		fclose(fp);
		return ret;
	}
	/* 修正wav文件头数据的大小 */
	wav_hdr.size_8 += wav_hdr.data_size + (sizeof(wav_hdr) - 8);
	
	/* 将修正过的数据写回文件头部,音频文件为wav格式 */
	fseek(fp, 4, 0);
	fwrite(&wav_hdr.size_8,sizeof(wav_hdr.size_8), 1, fp); //写入size_8的值
	fseek(fp, 40, 0); //将文件指针偏移到存储data_size值的位置
	fwrite(&wav_hdr.data_size,sizeof(wav_hdr.data_size), 1, fp); //写入data_size的值
	fclose(fp);
	fp = NULL;
	/* 合成完毕 */
	ret = QTTSSessionEnd(sessionID, "Normal");
	if (MSP_SUCCESS != ret)
	{
		printf("QTTSSessionEnd failed, error code: %d.\n",ret);
	}

	return ret;
}
void chatsubback(const std_msgs::String::ConstPtr& msg)
{
	chatsub_called = true;
	// std::cout<<"wrml "<<msg->data<<std::endl;
	std::string dataString = msg->data;
	chattext = dataString;
}

void backsubback(const std_msgs::String::ConstPtr& msg)
{
	if(waitback){
		backsub_called = true;
		// std::cout<<"wrml "<<msg->data<<std::endl;
		std::string dataString = msg->data;
		backtext = dataString;
		string done = "done";
		if(backtext == done && voice_state == VOICE_TASK_DOING){
			done_flag = true;
		}
		waitback = 0;
	}
}

void makespeech(const char* text,const char* filename, const char* session_begin_params){
	int ret = MSP_SUCCESS;
	printf("开始合成 ...\n");
	ret = text_to_speech(text, filename, session_begin_params);
	if (MSP_SUCCESS != ret)
	{
		printf("text_to_speech failed, error code: %d.\n", ret);
	}
	printf("合成完毕\n");
	sound_play::SoundRequest sp;
	sp.sound = sound_play::SoundRequest::PLAY_FILE;
	sp.command = sound_play::SoundRequest::PLAY_ONCE;
	sp.volume = 100.0;
	sp.arg = "tts_sample.wav";
	play_pub.publish(sp);
	sleep(1);
}

void waitForBack(){
	waitback = 1;
	ros::Rate loop_rate(10);
	while (ros::ok() && !backsub_called) {
		ros::spinOnce();
		loop_rate.sleep();
	}
	backsub_called = false;
	waitback = 0;
}

void waitForChat(){
	ros::Rate loop_rate(10);
	while (ros::ok() && !chatsub_called) {
		ros::spinOnce();
		loop_rate.sleep();
	}
	chatsub_called = false;
}


void voiceWordsCallback(const std_msgs::String::ConstPtr& msg)
{
    char cmd[2000];
    const char* text;
    int         ret                  = MSP_SUCCESS;
    const char* session_begin_params = "voice_name = xiaoyan, text_encoding = utf8, sample_rate = 16000, speed = 50, volume = 50, pitch = 50, rdn = 2";
    const char* filename             = "tts_sample.wav"; //合成的语音文件名称

    std::cout<<"I heard :"<<msg->data.c_str()<<" "<<voice_state<<std::endl;
	std::string dataString = msg->data;

	char buffer[256];

	static int LAST_STATE = 0;
	static int max_reset = 3;
	static int now_reset = 0;
	static int map_count = 10;
	static int pos_count = 10;
	if(voice_state == LAST_STATE && LAST_STATE!= VOICE_LISTEN && LAST_STATE != VOICE_WAKE 
	&& LAST_STATE!= VOICE_TASK_DOING){
		LAST_STATE = voice_state;
		now_reset += 1;
	}else{
		LAST_STATE = voice_state;
		now_reset = 0;
	}
	

	if(voice_state == VOICE_TASK_DOING){
		waitForBack();
		if(done_flag == true){
			voice_state = VOICE_LISTEN;
			done_flag = false;
		}
	}

	else if(voice_state == VOICE_LISTEN){
		if(dataString.find("启动") != std::string::npos
		|| dataString.find("你好") != std::string::npos){
			voice_state = VOICE_WAKE;
			char nameString[100] = "您好，欢迎使用智能家居机器人";
			text = nameString;
			std::cout<<text<<std::endl;

			makespeech(text,filename,session_begin_params);
		}
	}else if(voice_state == VOICE_WAKE){
		if(dataString.find("服务") != std::string::npos){
			voice_state = VOICE_SERVICE_INIT;
			//服务模式发起消息给后端，接收txt
			//1.读取service_map.txt 文本生成，请从以下地图中选择；+ txt文本 读取数量

			//2.监听选择 a b c d
			xfyun_new::bridgeToBack bt;
			bt.state = voice_state;
			bt.content = "service";
			back_pub.publish(bt);
			
			waitForBack();
			text = backtext.c_str();
            cout<<text<<endl;
			/* 文本合成 */
			makespeech(text,filename,session_begin_params);
            std::string txt(text);
            if(txt.find("地图为空，请先建图") != std::string::npos){
                voice_state = VOICE_LISTEN;
            }
			
		}else if(dataString.find("预约") != std::string::npos){
			voice_state = VOICE_APPOINT_INIT;

			//预约模式发起消息给后端，接收txt
			//1.读取appoint_map.txt 文本生成，请从以下地图中选择；+ txt文本 读取数量

			//2.监听选择 a b c d
			xfyun_new::bridgeToBack bt;
			bt.state = voice_state;
			bt.content = "appoint";
			back_pub.publish(bt);
			waitForBack();
			text = backtext.c_str();
            cout<<text<<endl;
			/* 文本合成 */
			makespeech(text,filename,session_begin_params);

            std::string txt(text);
            if(txt.find("地图为空，请先建图") != std::string::npos){
                voice_state = VOICE_LISTEN;
            }

		}else if(dataString.find("再见") != std::string::npos){
			voice_state = VOICE_LISTEN;
		}else if(dataString.find("聊天") != std::string::npos)
		{
			voice_state = VOICE_CHAT;
		}

	}else if(voice_state == VOICE_SERVICE_INIT){
		//TODO:
		if(now_reset < max_reset){
			int success = 0;
			for (size_t i = 0; i < map_count; i++)
			{
				char tmp = 'a'+i;
				string str;
				stringstream stream;
				stream << tmp;
				str = stream.str();
				char Tmp = 'A'+i;
				string Str;
				stringstream Stream;
				Stream << Tmp;
				Str = Stream.str();
				if(dataString.find(str) != std::string::npos || 
				dataString.find(Str) != std::string::npos){
					xfyun_new::bridgeToBack bt;
					bt.state = VOICE_SERVICE_NEXT;
					bt.content = Str;
					back_pub.publish(bt);
					waitForBack();
					success = 1;
					break;
				}
			}
		
			if(success == 1){
				voice_state = VOICE_SERVICE_NEXT;
				text = backtext.c_str();
				cout<<text<<endl;		
				/* 文本合成 */
				makespeech(text,filename,session_begin_params);
                std::string txt(text);
                if(txt.find("航点为空，请先标记航点") != std::string::npos){
                    voice_state = VOICE_LISTEN;
                }else if(txt.find("地图选择错误，请重新选择") != std::string::npos){
                    voice_state = VOICE_SERVICE_INIT;
                }
			}
		
		}else{
			voice_state = VOICE_WAKE;
		}

	}else if(voice_state == VOICE_APPOINT_INIT){
		
		if(now_reset < max_reset){
			int success = 0;
			for (size_t i = 0; i < map_count; i++)
			{
				char tmp = 'a'+i;
				string str;
				stringstream stream;
				stream << tmp;
				str = stream.str();
				char Tmp = 'A'+i;
				string Str;
				stringstream Stream;
				Stream << Tmp;
				Str = Stream.str();
				if(dataString.find(str) != std::string::npos || 
				dataString.find(Str) != std::string::npos){
					xfyun_new::bridgeToBack bt;
					bt.state = VOICE_APPOINT_NEXT;
					bt.content = Str;
					back_pub.publish(bt);
					waitForBack();
					success = 1;
					break;
				}
			}
			if(success == 1){
				voice_state = VOICE_APPOINT_NEXT;
				text = backtext.c_str();
				cout<<text<<endl;		
				/* 文本合成 */
				makespeech(text,filename,session_begin_params);
                std::string txt(text);
                if(txt.find("航点为空，请先标记航点") != std::string::npos){
                    voice_state = VOICE_LISTEN;
                }else if(txt.find("地图选择错误，请重新选择") != std::string::npos){
                    voice_state = VOICE_APPOINT_INIT;
                }
			}
		}else{
			voice_state = VOICE_WAKE;
		}
	}else if(voice_state == VOICE_CHAT){
		if(dataString.find("退出") != std::string::npos ||
		dataString.find("取消") != std::string::npos){
			voice_state = VOICE_WAKE;
		}
		else {
			std_msgs::String mg;
			mg.data = msg->data;
			chat_pub.publish(mg);
			waitForChat();
			text = chattext.c_str();
			makespeech(text,filename,session_begin_params);
		}

	}else if(voice_state ==  VOICE_SERVICE_NEXT)
    {
		
		if(now_reset < max_reset){
			int success = 0;
			for (size_t i = 0; i < pos_count; i++)
			{
				char tmp = 'a'+i;
				string str;
				stringstream stream;
				stream << tmp;
				str = stream.str();
				char Tmp = 'A'+i;
				string Str;
				stringstream Stream;
				Stream << Tmp;
				Str = Stream.str();
				if(dataString.find(str) != std::string::npos || 
				dataString.find(Str) != std::string::npos){
					xfyun_new::bridgeToBack bt;
					bt.state = VOICE_TASK;
					bt.content = Str;
					back_pub.publish(bt);
					waitForBack();
					success = 1;
					break;
				}
			}
			if(success == 1){
				voice_state = VOICE_TASK;
				//TODO:这里可能要改啊
                text = backtext.c_str();
                std::string txt(text);
                if(txt.find("航点选择错误，请重新选择") != std::string::npos){
                    voice_state = VOICE_SERVICE_NEXT;
                }
			}
		}else{
			voice_state = VOICE_WAKE;
		}

    }else if(voice_state ==  VOICE_APPOINT_NEXT)
    {
		if(now_reset < max_reset){
			int success = 0;
			for (size_t i = 0; i < pos_count; i++)
			{
				char tmp = 'a'+i;
				string str;
				stringstream stream;
				stream << tmp;
				str = stream.str();
				char Tmp = 'A'+i;
				string Str;
				stringstream Stream;
				Stream << Tmp;
				Str = Stream.str();
				if(dataString.find(str) != std::string::npos || 
				dataString.find(Str) != std::string::npos){
					xfyun_new::bridgeToBack bt;
					bt.state = VOICE_APPOINT_TIME;
					bt.content = Str;
					back_pub.publish(bt);
					waitForBack();
					success = 1;
					break;
				}
			}
			if(success == 1){
				voice_state = VOICE_APPOINT_TIME;
				text = backtext.c_str();
				makespeech(text,filename,session_begin_params);
				cout<<text<<endl;
                std::string txt(text);
                if(txt.find("航点选择错误，请重新选择") != std::string::npos){
                    voice_state = VOICE_APPOINT_NEXT;
                }
			}
		}else{
			voice_state = VOICE_WAKE;
		}
    }else if(voice_state ==  VOICE_APPOINT_TIME){
		if(now_reset < max_reset){
			int success = 0;
			for (size_t i = 0; i < pos_count; i++)
			{
				char tmp = 'a'+i;
				string str;
				stringstream stream;
				stream << tmp;
				str = stream.str();
				char Tmp = 'A'+i;
				string Str;
				stringstream Stream;
				Stream << Tmp;
				Str = Stream.str();
				if(dataString.find(str) != std::string::npos || 
				dataString.find(Str) != std::string::npos){
					xfyun_new::bridgeToBack bt;
					bt.state = VOICE_APPOINT_TARGET;
					bt.content = Str;
					back_pub.publish(bt);
					waitForBack();
					success = 1;
					break;
				}
			}
			if(success == 1){
				voice_state = VOICE_APPOINT_TARGET;
				text = backtext.c_str();
				makespeech(text,filename,session_begin_params);
				cout<<text<<endl;

			}
		}else{
			voice_state = VOICE_WAKE;
		}

    }else if(voice_state == VOICE_APPOINT_TARGET){
		
		if(now_reset < max_reset){
			int success = 0;
			if(dataString.find("目前") != std::string::npos ||
			 dataString.find("当前") != std::string::npos){
				success = 1;
				string Str = "NOW";
				cout<<Str<<endl;
				xfyun_new::bridgeToBack bt;
				bt.state = VOICE_TASK;
				bt.content = Str;
				back_pub.publish(bt);
				waitForBack();
			}else{
				for (size_t i = 0; i < pos_count; i++)
				{
					char tmp = 'a'+i;
					string str;
					stringstream stream;
					stream << tmp;
					str = stream.str();
					char Tmp = 'A'+i;
					string Str;
					stringstream Stream;
					Stream << Tmp;
					Str = Stream.str();
					if(dataString.find(str) != std::string::npos || 
					dataString.find(Str) != std::string::npos){
						xfyun_new::bridgeToBack bt;
						bt.state = VOICE_TASK;
						bt.content = Str;
						cout<<Str<<endl;
						back_pub.publish(bt);
						waitForBack();
						success = 1;
						break;
					}
				}
			}
			if(success == 1){
				voice_state = VOICE_TASK;
                text = backtext.c_str();
                std::string txt(text);
                if(txt.find("航点选择错误，请重新选择") != std::string::npos){
                    voice_state = VOICE_SERVICE_NEXT;
                }
			}
		}else{
			voice_state = VOICE_WAKE;
		}

	}else if(voice_state == VOICE_TASK){
		xfyun_new::bridgeToBack bt;
		bt.state = VOICE_TASK_DOING;
		bt.content = "ADD";
		back_pub.publish(bt);
		voice_state = VOICE_TASK_DOING;
        waitback = 1;
	}else if(voice_state == VOICE_TASK_OFF){
		xfyun_new::bridgeToBack bt;
		bt.state = VOICE_TASK_OFF;
		bt.content = "DEL";
		back_pub.publish(bt);
		voice_state = VOICE_LISTEN;
	}


}

void toExit()
{
    printf("按任意键退出 ...\n");
    getchar();
    MSPLogout(); //退出登录
}

int GetCh()
{
	static struct termios oldt, newt;
	tcgetattr( STDIN_FILENO, &oldt);
	newt = oldt;
	newt.c_lflag &= ~(ICANON);
	tcsetattr( STDIN_FILENO, TCSANOW, &newt);
	int c = getchar();
	tcsetattr( STDIN_FILENO, TCSANOW, &oldt);
	return c;
}




int main(int argc, char* argv[])
{
	
	int         ret                  = MSP_SUCCESS;
	const char* login_params         = "appid = cbb10683, work_dir = .";//登录参数,appid与msc库绑定,请勿随意改动
	/*
	* rdn:           合成音频数字发音方式
	* volume:        合成音频的音量
	* pitch:         合成音频的音调
	* speed:         合成音频对应的语速
	* voice_name:    合成发音人
	* sample_rate:   合成音频采样率
	* text_encoding: 合成文本编码格式
	*
	*/
	// const char* session_begin_params = "voice_name = xiaoyan, text_encoding = utf8, sample_rate = 16000, speed = 50, volume = 50, pitch = 50, rdn = 2";
	// const char* filename             = "tts_sample.wav"; //合成的语音文件名称
	// const char* text                 = "亲爱的用户，您好，这是一个语音合成示例，感谢您对科大讯飞语音技术的支持！科大讯飞是亚太地区最大的语音上市公司，股票代码：002230"; //合成文本

	/* 用户登录 */
	ret = MSPLogin(NULL, NULL, login_params);//第一个参数是用户名，第二个参数是密码，第三个参数是登录参数，用户名和密码可在http://www.xfyun.cn注册获取
	if (MSP_SUCCESS != ret)
	{
		printf("MSPLogin failed, error code: %d.\n", ret);
		toExit() ;//登录失败，退出登录
	}
	// printf("\n###########################################################################\n");
	// printf("## 语音合成（Text To Speech，TTS）技术能够自动将任意文字实时转换为连续的 ##\n");
	// printf("## 自然语音，是一种能够在任何时间、任何地点，向任何人提供语音信息服务的  ##\n");
	// printf("## 高效便捷手段，非常符合信息时代海量数据、动态更新和个性化查询的需求。  ##\n");
	// printf("###########################################################################\n\n");
	/* 文本合成 */
	ros::init(argc,argv,"simpleChat");
    ros::NodeHandle n;
	voice_state = VOICE_LISTEN;
	waitback = 0;
	back_pub = n.advertise<xfyun_new::bridgeToBack>("toBack", 1000);
	play_pub = n.advertise<sound_play::SoundRequest>("/robotsound", 1000);
	chat_pub = n.advertise<std_msgs::String>("chatContent", 1000);
    ros::Subscriber sub =n.subscribe("voiceWords", 1000, voiceWordsCallback);
	ros::Subscriber chatsub =n.subscribe("chatBack", 1000, chatsubback);
	ros::Subscriber backsub = n.subscribe("backInfo", 1000, backsubback);
	//ros::Subscriber warningsub = n.subscribe("warning", 1000, warnsubback);
	

    ros::spin(); //单线程

	// ros::AsyncSpinner spinner(4);  // 创建一个具有2个线程的 AsyncSpinner
	// spinner.start();  // 回调函数在2个线程中并发执行
	// ros::waitForShutdown();

exit:
	printf("按任意键退出 ...\n");
	getchar();
	MSPLogout(); //退出登录

	return 0;
}

