package com.wwft.service.domain;

import java.sql.Date;

public class Profile {
	
	private int profileNo;
	private int treeNo;
	private String profileState;
	private String profileName;
	private String phone;
	private Date familyRelations;	
	private Date profileImage;	
	private Date birthday;
	private String address;

	public Profile() {
	}

	public int getProfileNo() {
		return profileNo;
	}

	public void setProfileNo(int profileNo) {
		this.profileNo = profileNo;
	}

	public int getTreeNo() {
		return treeNo;
	}

	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}

	public String getProfileState() {
		return profileState;
	}

	public void setProfileState(String profileState) {
		this.profileState = profileState;
	}

	public String getProfileName() {
		return profileName;
	}

	public void setProfileName(String profileName) {
		this.profileName = profileName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getFamilyRelations() {
		return familyRelations;
	}

	public void setFamilyRelations(Date familyRelations) {
		this.familyRelations = familyRelations;
	}

	public Date getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(Date profileImage) {
		this.profileImage = profileImage;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Profile [profileNo=" + profileNo + ", treeNo=" + treeNo + ", profileState=" + profileState
				+ ", profileName=" + profileName + ", phone=" + phone + ", familyRelations=" + familyRelations
				+ ", profileImage=" + profileImage + ", birthday=" + birthday + ", address=" + address + "]";
	}

	


}
