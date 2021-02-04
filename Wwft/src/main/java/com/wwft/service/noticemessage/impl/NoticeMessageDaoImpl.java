package com.wwft.service.noticemessage.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.common.web.Search;
import com.wwft.service.domain.NoticeMessage;
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
	public void removeNoticeMessage(int noticeMessageNo) throws Exception {
		
		sqlSession.delete("NoticeMessageMapper.removeNoticeMessage", noticeMessageNo);
		
	}

	@Override
	public Map<String, Object> getTreeNoticeMessageList(int treeNo, Search search) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("treeNo", treeNo);
		map.put("search", search);

		List<NoticeMessage> list = sqlSession.selectList("NoticeMessageMapper.getTreeNoticeMessage", map);
//		int totalCount = sqlSession.selectOne("NoticeMessageMapper.getTreeTotalCount", treeNo);
		System.out.println(list.size());
		//int totalCount = productDao.getTotalCount(search);
		map.put("list", list);
//		map.put("totalCount", totalCount);
		return map;
	}

	@Override
	public Map<String, Object> getForestNoticeMessageList(int forestNo, Search search) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("forestNo", forestNo);
		map.put("search", search);

		List<NoticeMessage> list = sqlSession.selectList("NoticeMessageMapper.getForestNoticeMessage", map);
//		int totalCount = sqlSession.selectOne("NoticeMessageMapper.getTreeTotalCount", forestNo);
		System.out.println(list.size());
		//int totalCount = productDao.getTotalCount(search);
		map.put("list", list);
//		map.put("totalCount", totalCount);
		return map;		
		
		
	}

	@Override
	public int getTreeNoticeMessageStateCount(int treeNo) throws Exception {
		
		
		return sqlSession.selectOne("NoticeMessageMapper.getTreeNoticeMessageStateCount", treeNo);
	}

	@Override
	public int getForestNoticeMessageStateCount(int forestNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("NoticeMessageMapper.getForestNoticeMessageStateCount", forestNo);
	}
	
	@Override
	public void updateTreeNoticeMessageState(int treeNo) throws Exception {
		sqlSession.update("NoticeMessageMapper.updateTreeNoticeMessageState", treeNo);
	}



	@Override
	public void updateForestNoticeMessageState(int forest) throws Exception {
		sqlSession.update("NoticeMessageMapper.updateForestNoticeMessageState", forest);
		
	}


}
