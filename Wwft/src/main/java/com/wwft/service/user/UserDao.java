package com.wwft.service.user;

import java.util.List;
import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;


public interface UserDao {
	
		// INSERT
		public void addUser(User user) throws Exception ;

		// SELECT ONE
		public User getUser(String userId) throws Exception ;

		// SELECT LIST
		public List<User> getUserList() throws Exception ;

		// UPDATE
		public void updateUser(User user) throws Exception ;
		
		public void removeUser(User user) throws Exception;
		// 아이디 찾기
		public void findId(User user) throws Exception ;

		// 비밀번호  찾기
		public void findPassword(User user) throws Exception ;
		
		
//		public void Certified(String user) throws Exception;
//
//		public void Authentication(String user) throws Exception;
//		
//		// 회원 탈퇴
//		public void userWithdrawal(User user) throws Exception ;
//
//		// 게정 활성화
//		public void userActivation(User user) throws Exception ;
//		
}