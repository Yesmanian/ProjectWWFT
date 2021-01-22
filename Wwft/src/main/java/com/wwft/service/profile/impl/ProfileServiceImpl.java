package com.wwft.service.profile.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Profile;
import com.wwft.service.profile.ProfileDao;
import com.wwft.service.profile.ProfileService;

@Service("profileServiceImpl")
public class ProfileServiceImpl implements ProfileService {
	
	
	///Field
		@Autowired
		@Qualifier("profileDaoImpl")
		private ProfileDao profileDao;
		public void setProfileDao(ProfileDao profileDao) {
			this.profileDao = profileDao;
		}
		
	public ProfileServiceImpl() {
		System.out.println(this.getClass());
	}
	
	@Override
	public void addProfile(Profile profile) throws Exception {
		profileDao.addProfile(profile);
	}
	
	@Override
	public Profile getProfile(int profileNo) throws Exception {
		return profileDao.getProfile(profileNo);
	}
//	
//	@Override
//	public Map<String, Object> getProfileList(Search search) throws Exception {
//		List<Profile> list= profileDao.getProfileList(search);
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("list", list );
//		return map;
//	}
//	
	@Override
	public void updateProfile(Profile profile) throws Exception {
		profileDao.updateProfile(profile);
	}
	
	@Override
	public void removeProfile(Profile profile) throws Exception {
		 profileDao.removeProfile(profile);
	}

}
