package com.wwft.service.noticemessage.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.NoticeMessage;
import com.wwft.service.domain.Tree;
import com.wwft.service.noticemessage.NoticeMessageDao;

@Repository("noticeMessageDaoImpl")
public class NoticeMessageDaoImpl implements NoticeMessageDao {
	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSession sqlSession;

	public NoticeMessageDaoImpl() {
//		System.out.println("노티스 dao임플");
	}

	@Override
	public void sendNoticeMessage(NoticeMessage noticeMessage) throws Exception {
		sqlSession.insert("NoticeMessageMapper.sendNoticeMessage", noticeMessage);	
	}

	@Override
	public List<NoticeMessage> getTreeNoticeMessageList(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("NoticeMessageMapper.getTreeNoticeMessage", treeNo);
	}

	@Override
	public List<NoticeMessage> getForestNoticeMessageList(int forestNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeNoticeMessage(int noticeMessageNo) throws Exception {
		
		sqlSession.delete("NoticeMessageMapper.removeNoticeMessage", noticeMessageNo);
		
	}

	@Override
	public List<Tree> acceptTreeList(int forestN) throws Exception {
		
		return sqlSession.selectList("NoticeMessageMapper.acceptTreeList", forestNo);
	}

}
