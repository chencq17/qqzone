package com.gem.qqzone.biz;

import java.util.Set;

import com.gem.qqzone.pojo.User;

public interface UserBiz {
	//��¼
	public User login(String loginId  , String pwd );
	
	public User getUser(int id);
	
	//��ȡ�ض��û������к�����Ϣ
	public Set<User> getFriends(User user);
}
