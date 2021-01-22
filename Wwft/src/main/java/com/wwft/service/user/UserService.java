package com.wwft.service.user;

import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.User;

public interface UserService {
	
		// INSERT
		public void addUser(User user) throws Exception ;

		// SELECT ONE
		public User getUser(String userId) throws Exception ;

		// SELECT LIST
		public Map<String , Object> getUserList(Search search) throws Exception ;

		// UPDATE
		public void updateUser(User user) throws Exception ;
//			
//		// ���̵� ã��
//		public void findId(Search search) throws Exception ;
//
//		// ��й�ȣ  ã��
//		public void findPassword(Search search) throws Exception ;
//			
//		// ȸ�� Ż��
//		public void userWithdrawal(User user) throws Exception ;
//
//		// ���� Ȱ��ȭ
//		public void userActivation(User user) throws Exception ;
//
//		// ȸ�� ID �ߺ� Ȯ��
//		public boolean checkDuplication(String userId) throws Exception ;
//		
//		// ����
//		public String certified(String userId) throws Exception;
//		
//		// ����
//		public String Authentication(String user) throws Exception;

		
}
