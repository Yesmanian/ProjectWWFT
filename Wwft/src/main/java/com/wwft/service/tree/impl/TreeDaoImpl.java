package com.wwft.service.tree.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.common.web.Search;
import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Calender;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.tree.TreeDao;

@Repository("treeDaoImpl")
public class TreeDaoImpl implements TreeDao {

	
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	

	
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+".sqlSession() Call..");
		this.sqlSession = sqlSession;
	}
	

	//Constructor
	public TreeDaoImpl() {
		System.out.println("::"+getClass()+".Default Contructor..");
	}
	

	@Override
	public void addTree(Tree tree) throws Exception {
		sqlSession.insert("TreeMapper.addTree", tree);
	}


	@Override
	public void removeTree(int treeNo) throws Exception {
		sqlSession.delete("TreeMapper.removeTree", treeNo);
		
	}

	

	@Override
	public Tree getTree(int treeNo) throws Exception {
		
		return sqlSession.selectOne("TreeMapper.getTree", treeNo);
	}


	@Override
	public List<Profile> getProfileIntroduceList(int treeNo) throws Exception {
		return sqlSession.selectList("TreeMapper.getProfileIntroduceList", treeNo);
	}



	@Override
	public Tree getTreeRanking(int treeNo) throws Exception {
		return sqlSession.selectOne("TreeMapper.getTreeRanking", treeNo);
	}


	@Override
	public Tree getWorldTreeRanking(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Tree getNationTreeRanking(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Forest> getForestList(int treeNo) throws Exception {
		return sqlSession.selectList("TreeMapper.getForestList", treeNo);
	}


	@Override
	public Tree getTreeGrowth(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BucketList> getBucketList(int treeNo) throws Exception {
		return sqlSession.selectList("TreeMapper.getBucketList", treeNo);
	
	}

	@Override
	public void addBucketList(BucketList bucketList) throws Exception {
		sqlSession.insert("TreeMapper.addBucketList", bucketList);
		
	}


	@Override
	public void updateBucketList(BucketList bucketList) throws Exception {
		sqlSession.update("TreeMapper.updateBucketList", bucketList);
		
		
	}


	@Override
	public void removeBucketList(BucketList bucketList) throws Exception {
		sqlSession.delete("TreeMapper.removeBucketList", bucketList);
		
	}




	@Override
	public Calender getCalender(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tree getNoticeMessageBox(int treeNo) throws Exception {
		return null;
	}


	@Override
	public void addFamilyMotto(Tree tree) throws Exception {
		sqlSession.insert("TreeMapper.addFamilyMotto", tree);
		
	}


	@Override
	public void updateFamilyMotto(Tree tree) throws Exception {
		sqlSession.update("TreeMapper.updateFamilyMotto", tree);
		
	}


	@Override
	public void removeFamilyMotto(Tree tree) throws Exception {
		sqlSession.update("TreeMapper.removeFamilyMotto", tree);
	}


	@Override
	public List<Forest> searchForest(Search search) throws Exception {
		return sqlSession.selectList("TreeMapper.searchForest", search);
	}



}


	

	

