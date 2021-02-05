package com.wwft.service.profile.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Profile;
import com.wwft.service.profile.ProfileDao;

@Repository("profileDaoImpl")
public class ProfileDaoImpl implements ProfileDao {
	
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public ProfileDaoImpl() {
		System.out.println(this.getClass());
	}
	
	@Override
	public void addProfile(Profile profile) throws Exception {
		sqlSession.insert("ProfileMapper.addProfile", profile);
	}
	
	@Override
	public Profile getProfile(int profileNo) throws Exception {
		return sqlSession.selectOne("ProfileMapper.getProfile", profileNo);
	}
	
	@Override
	public List<Profile> getProfileList(int treeNo) throws Exception {
		return sqlSession.selectList("ProfileMapper.getProfileList",treeNo);
	}
	
	@Override
	public void updateProfile(Profile profile) throws Exception {
		sqlSession.update("ProfileMapper.updateProfile", profile);
	}
	
	@Override
	public void removeProfile(Profile profile) throws Exception {
		 sqlSession.delete("ProfileMapper.removeProfile", profile);
	}


}
