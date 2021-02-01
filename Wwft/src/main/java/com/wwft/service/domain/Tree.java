package com.wwft.service.domain;

import java.util.List;

public class Tree {

	//Field 
	private int treeNo;
	private String userId;
	private String treeName;
	private char seedNo;
	private String treeImageName;
	private String countryId;
	private String familyMotto;
	private int activityTotalPoint;
	private List<BucketList> bucketList;
	private List<Profile> profile;
	private List<Forest> forest;
	private List<ActivityPoint> activityPoint;
	
	
	public Tree() {
	}


	public int getTreeNo() {
		return treeNo;
	}


	public void setTreeNo(int treeNo) {
		this.treeNo = treeNo;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getTreeName() {
		return treeName;
	}


	public void setTreeName(String treeName) {
		this.treeName = treeName;
	}


	public char getSeedNo() {
		return seedNo;
	}


	public void setSeedNo(char seedNo) {
		this.seedNo = seedNo;
	}


	public String getTreeImageName() {
		return treeImageName;
	}


	public void setTreeImageName(String treeImageName) {
		this.treeImageName = treeImageName;
	}


	public String getCountryId() {
		return countryId;
	}


	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}


	public String getFamilyMotto() {
		return familyMotto;
	}


	public void setFamilyMotto(String familyMotto) {
		this.familyMotto = familyMotto;
	}


	public int getActivityTotalPoint() {
		return activityTotalPoint;
	}


	public void setActivityTotalPoint(int activityTotalPoint) {
		this.activityTotalPoint = activityTotalPoint;
	}


	public List<BucketList> getBucketList() {
		return bucketList;
	}


	public void setBucketList(List<BucketList> bucketList) {
		this.bucketList = bucketList;
	}


	public List<Profile> getProfile() {
		return profile;
	}


	public void setProfile(List<Profile> profile) {
		this.profile = profile;
	}


	public List<Forest> getForest() {
		return forest;
	}


	public void setForest(List<Forest> forest) {
		this.forest = forest;
	}


	public List<ActivityPoint> getActivityPoint() {
		return activityPoint;
	}


	public void setActivityPoint(List<ActivityPoint> activityPoint) {
		this.activityPoint = activityPoint;
	}


	@Override
	public String toString() {
		return "Tree [treeNo=" + treeNo + ", userId=" + userId + ", treeName=" + treeName + ", seedNo=" + seedNo
				+ ", treeImageName=" + treeImageName + ", countryId=" + countryId + ", familyMotto=" + familyMotto
				+ ", activityTotalPoint=" + activityTotalPoint + ", bucketList=" + bucketList + ", profile=" + profile
				+ ", forest=" + forest + ", activityPoint=" + activityPoint + "]";
	}



}
	


	



	


	
	
	








	



	


	
	
	




	


	

	
	

	

	

	
	
	
	
	
	
	
	
	
	
	
	
	

