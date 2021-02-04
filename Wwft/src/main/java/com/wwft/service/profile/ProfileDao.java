package com.wwft.service.profile;

import java.util.List;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Profile;

public interface ProfileDao {
	
	// INSERT
	public void addProfile(Profile profile) throws Exception ;
	
	// SELECT ONE
	public Profile getProfile(int profileNo) throws Exception ;

	// SELECT LIST
	public List<Profile> getProfileList(int treeNo) throws Exception ;

	// UPDATE
	public void updateProfile(Profile profile) throws Exception ;

	// REMOVE
	public void removeProfile(Profile profile) throws Exception ;

}
