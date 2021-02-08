package com.wwft.service.user;

import java.util.List;
import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;

public interface UserService {
	
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
			
//		// 회원 탈퇴
//		public void userWithdrawal(User user) throws Exception ;
//
//		// 계정 활성화
//		public void userActivation(User user) throws Exception ;
//
//		// 회원 ID 중복 확인
		public boolean checkDuplication(String userId) throws Exception ;
		
			
		
//		// 인증
//		public String certified(String userId) throws Exception;
//		
//		// 인증
//		public String Authentication(String user) throws Exception;


		
}
