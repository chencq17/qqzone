package com.gem.qqzone.dao;

import java.util.Set;
import com.gem.qqzone.pojo.Reply;

public interface ReplyDAO {
	//����topicID��ȡ���еĻظ�
	Set<Reply> getReplies(int topicId);
}
