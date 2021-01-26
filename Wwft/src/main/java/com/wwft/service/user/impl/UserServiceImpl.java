package com.wwft.service.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;
import com.wwft.service.user.UserDao;
import com.wwft.service.user.UserService;

@Service("userServiceImpl")
public class UserServiceImpl implements UserService{
	
	///Field
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	///Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}
	
	///Method
	@Override
	public void addUser(User user) throws Exception {
		userDao.addUser(user);
		
	}

	@Override
	public User getUser(String userId) throws Exception {
		return userDao.getUser(userId);
	}

	@Override
	public Map<String, Object> getUserList(Search search) throws Exception {
		List<User> list= userDao.getUserList(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		return map;
	}

	@Override
	public void updateUser(User user) throws Exception {
		userDao.updateUser(user);
	}
//	
//	@Override
//	public void findId(Search search) throws Exception {
//		userDao.findId(search);
//	}
//	
//	@Override
//	public void findPassword(Search search) throws Exception {
//		userDao.findPassword(search);
//	}
//
////	@Override
////	public void userWithdrawal(User user) throws Exception {
////		// TODO Auto-generated method stub
////		
////	}
////
////	@Override
////	public void userActivation(User user) throws Exception {
////		// TODO Auto-generated method stub
////		
////	}
//	
//	@Override
//	public boolean checkDuplication(String userId) throws Exception {
//		boolean result=true;
//		User user=userDao.getUser(userId);
//		if(user != null) {
//			result=false;
//		}
//		return result;
//	}
	



}
