package com.gem.qqzone.dao;

import java.util.Set;

import com.gem.qqzone.pojo.Topic;

public interface TopicDAO {
	//��ȡ�ض��û���������־
	Set<Topic> getTopics(int userId);
	
	Topic getTopic(int id);
}
