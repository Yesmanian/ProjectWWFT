package com.wwft.service.domain;

import java.sql.Date;

public class User {
	
	private String userId;
	private String password;
	private String email;
	private int treeNo;
	private Date userWithdrawRegDate;	
	private Date userRegDate;
	private String userState;
	private String role;

	public User() {
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTreeNo() {
		return treeNo;
	}

	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}

	public Date getUserWithdrawRegDate() {
		return userWithdrawRegDate;
	}

	public void setUserWithdrawRegDate(Date userWithdrawRegDate) {
		this.userWithdrawRegDate = userWithdrawRegDate;
	}

	public Date getUserRegDate() {
		return userRegDate;
	}

	public void setUserRegDate(Date userRegDate) {
		this.userRegDate = userRegDate;
	}

	public String getUserState() {
		return userState;
	}

	public void setUserState(String userState) {
		this.userState = userState;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", password=" + password + ", email=" + email + ", treeNo=" + treeNo
				+ ", userWithdrawRegDate=" + userWithdrawRegDate + ", userRegDate=" + userRegDate + ", userState="
				+ userState + ", role=" + role + "]";
	}

	
}
