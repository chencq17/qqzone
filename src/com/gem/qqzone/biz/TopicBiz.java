package com.gem.qqzone.biz;

import java.util.Set;

import com.gem.qqzone.pojo.Topic;
import com.gem.qqzone.pojo.User;

public interface TopicBiz {
	//��ȡ�ض��û���������־
	Set<Topic> getTopics(User user);
	
	//�������־
	
	//ɾ����־(��ɾ�����лظ�)
	
	//��ȡ�ض���־��Ϣ
	Topic getTopic(int id);
}
