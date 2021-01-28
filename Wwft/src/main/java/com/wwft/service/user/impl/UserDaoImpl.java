package com.wwft.service.user.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;
import com.wwft.service.user.UserDao;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao {

	
	
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public UserDaoImpl() {
		System.out.println(this.getClass());
	}
	@Override
	public void addUser(User user) throws Exception {
		sqlSession.insert("UserMapper.addUser", user);
	
	}
	//Method
	@Override
	public User getUser(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}
	
	@Override
	public List<User> getUserList(String userId) throws Exception {
		return sqlSession.selectList("UserMapper.getUserList");
	}
	
	@Override
	public void updateUser(User user) throws Exception {
		sqlSession.update("UserMapper.updateUser", user);
		
	}
	
	@Override
	public void findId(User user) throws Exception {
		return;	
	}
	
	@Override
	public void findPassword(User user) throws Exception {
		return;
		
	}

	@Override
	public void removeUser(User user) throws Exception {
		sqlSession.delete("UserMapper.removeUser", user);
	}
		
	
}
