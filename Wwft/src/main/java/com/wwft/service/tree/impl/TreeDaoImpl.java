package com.wwft.service.tree.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.ActivityPoint;
import com.wwft.service.domain.BucketList;
import com.wwft.service.domain.Calender;
import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.domain.TreeForest;
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
	public Tree getUserTree(int treeNo) throws Exception {
		
		System.out.println("treeDaoImpl getUserTree Start");
		return sqlSession.selectOne("TreeMapper.getUserTree", treeNo);

		
		
		
		
		
	}

	@Override
	public void addTree(Tree tree) throws Exception {
		System.out.println("TreeDaoImpl addTree Start");
		sqlSession.insert("TreeMapper.addTree", tree);
		int treeNo = sqlSession.selectOne("TreeMapper.getMaxTreeNo");
		
		tree.setTreeNo(treeNo);
		sqlSession.insert("TreeMapper.addTreeForest", tree);
	}


	@Override
	public void removeTree(int treeNo) throws Exception {
		sqlSession.delete("TreeMapper.removeTree", treeNo);
		
	}
	

	@Override
	public void addTreeForest(TreeForest treeForest) throws Exception {
		sqlSession.insert("TreeMapper.addTreeForest", treeForest);
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
	public void updateBucketList(int bucketListNo) throws Exception {
		sqlSession.update("TreeMapper.updateBucketList", bucketListNo);
		
		
	}


	@Override
	public void removeBucketList(int bucketListNo) throws Exception {
		sqlSession.delete("TreeMapper.removeBucketList", bucketListNo);
		
	}




	@Override
	public Calender getCalender(int treeNo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void searchTreeAndForest() throws Exception {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Tree getNoticeMessageBox(int treeNo) throws Exception {
		return null;
	}


	@Override
	public void updateFamilyMotto(Tree tree) throws Exception {
		sqlSession.update("TreeMapper.updateFamilyMotto", tree);
		
	}


	@Override
	public Tree getFamilyMotto(int treeNo) throws Exception {
		return sqlSession.selectOne("TreeMapper.getFamilyMotto", treeNo);
	}



	

}


	

	


