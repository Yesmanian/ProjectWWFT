package com.wwft.service.profile.test;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.wwft.service.domain.Profile;
import com.wwft.service.domain.User;
import com.wwft.service.profile.ProfileService;





@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/context-common.xml" ,
										"classpath:config/context-aspect.xml",
										"classpath:config/context-mybatis.xml",
										"classpath:config/context-transaction.xml"})
public class ProfileServiceTest {
	
	
	@Autowired
	@Qualifier("profileServiceImpl")
	private ProfileService profileService;
	
	@Test
	public void testAddProfile() throws Exception {
			
		Profile profile = new Profile();
		profile.setTreeNo(1);
		profile.setProfileName("누나프로필");
		profile.setFamilyRelations("누나");
		profile.setAddress("서울시강남구논현동");
		profile.setPhone("01098765421");
		profile.setProfileImage("Image");
		profile.setProfileState("1");
			
		profileService.addProfile(profile);
			
		profile = profileService.getProfile(46);
	}
	@Test
	public void testGetProfile() throws Exception {
				
		Profile profile = new Profile();
		profile.setTreeNo(1);
		profile.setProfileName("누나프로필");
		profile.setFamilyRelations("누나");
		profile.setAddress("서울시강남구논현동");
		profile.setPhone("01098765421");
		profile.setProfileImage("Image");
		profile.setProfileState("1");
			
		profile = profileService.getProfile(46);
				
	}
	
	@Test
	public void testUpdateUser() throws Exception{
		
		
		
		Profile profile = profileService.getProfile(46);
		Assert.assertNotNull(profile);
		
		System.out.println(profile);
		profile.setProfileNo(46);
		profile.setProfileName("형프로필");
		profile.setFamilyRelations("형");
		profile.setAddress("서울시강남구신사동");
		profile.setPhone("01077775555");
		profile.setProfileImage("Image22");
		profile.setProfileState("1");
		
		profileService.updateProfile(profile);
		
		profile = profileService.getProfile(46);
		Assert.assertNotNull(profile);
				
		//==> console 확인
		//System.out.println(profile);
	}
	//@Test
	public void testRemoveProfile() throws Exception{
			
		Profile profile = profileService.getProfile(46);
		System.out.println(profile);
			
			
			
		profileService.removeProfile(profile);
			
		profile = profileService.getProfile(46);

					
		//==> console 확인
		//System.out.println(profile);
	}

	
}