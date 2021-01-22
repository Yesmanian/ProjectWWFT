package com.wwft.service.forest.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.Forest;
import com.wwft.service.domain.Profile;
import com.wwft.service.domain.Tree;
import com.wwft.service.forest.ForestDao;

@Repository("forestDaoImpl")
public class ForestDaoImpl implements ForestDao {
	
	//Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	//Setter
	public void setSqlSession(SqlSession sqlSession) {
		System.out.println("::"+getClass()+"sqlSession() Call..");
		this.sqlSession = sqlSession;
	}
	
	
	public ForestDaoImpl() {
		System.out.println("::"+getClass()+"default Constructor Call..");
	}

	@Override
	public Forest getForest(int forestNo) throws Exception {
		System.out.println("ForestDao getForest");
		return sqlSession.selectOne("ForestMapper.getForest", forestNo);
	}


	@Override
	public void addForest(Forest forest) throws Exception {
		System.out.println("ForestDao addForest");
		sqlSession.insert("ForestMapper.addForest", forest);
		
	}


	@Override
	public Forest updateForestName(Forest forest) throws Exception {
		System.out.println("ForestDao updateForestName");
		int checkNameState = sqlSession.selectOne("ForestMapper.checkForestName", forest);
		System.out.println(checkNameState);
		if(checkNameState == 0) {
			sqlSession.update("ForestMapper.updateForestName", forest);
			System.out.println((Forest)sqlSession.selectOne("ForestMapper.getForest", forest.getForestNo()));
			return sqlSession.selectOne("ForestMapper.getForest", forest.getForestNo());
		}else {
			return sqlSession.selectOne("ForestMapper.getForest", forest.getForestNo());
		}
		
	}


	@Override
	public List<Tree> getTreeList(int forestNo) throws Exception {
		
		System.out.println("ForestDao getTreeList");
		
		return sqlSession.selectList("ForestMapper.getTreeList", forestNo);
	}


	@Override
	public List<Tree> getTreeRestList(int forestNo, int pageNumber) throws Exception {
		System.out.println("ForestDao getTreeRestList");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("forestNo", forestNo);
		map.put("pageNumber", pageNumber);
		System.out.println(map.get("forestNo"));
		System.out.println(map.get("pageNumber"));
		System.out.println(forestNo);
		System.out.println(pageNumber);
		List<Tree> list = sqlSession.selectList("ForestMapper.getTreeRestList", map);
		
		return sqlSession.selectList("ForestMapper.getTreeRestList", map );
	}


	@Override
	public Forest updateForestInform(Forest forest) throws Exception {
		System.out.println("ForestDao updateForestInform");
		//추후 프로필 번호로 프로필 이름 가져오기
		//Profile profile = sqlSession.selectOne("ForestMapper.getProfile", forest.getForestInformWriter());
		System.out.println(forest.getForestNo());
		System.out.println(forest.getForestInformText());
		System.out.println(forest.getForestInformWriter());
		sqlSession.update("ForestMapper.updateForestInform", forest);
		return sqlSession.selectOne("ForestMapper.getForest", forest);
	}

}
