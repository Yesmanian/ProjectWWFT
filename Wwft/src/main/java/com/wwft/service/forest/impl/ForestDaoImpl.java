package com.wwft.service.forest.impl;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.jdt.internal.compiler.ast.ForStatement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.service.domain.Forest;
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

}
