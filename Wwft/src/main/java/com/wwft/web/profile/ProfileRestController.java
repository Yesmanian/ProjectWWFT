package com.wwft.web.profile;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.wwft.service.domain.Profile;
import com.wwft.service.domain.User;
import com.wwft.service.profile.ProfileService;

@RestController
@RequestMapping("/profile/*")
public class ProfileRestController {
	
		
		@Autowired
		@Qualifier("profileServiceImpl")
		private ProfileService profileService;

	public ProfileRestController() {
		System.out.println(this.getClass() + "Restcontroller");
	}

	@RequestMapping( value = "json/addProfile", method = RequestMethod.POST)
	public ModelAndView addProfile(@ModelAttribute() Profile profile ,HttpSession session ,ModelAndView modelAndView,MultipartHttpServletRequest request  ) throws Exception{
		System.out.println("addProfile: POST");
		System.out.println(profile);
		//imageUpload
		MultipartFile file = request.getFile("profileImage");
		
		 String originalImageName = null; 
		  String saveImageName = null ; 
		  String savePath = null;
		  String uuid = UUID.randomUUID().toString().replaceAll(",", "");
		  
		  if(file != null){
				
				 //파일이 저장될 경로 설정
				//String path ="C:\\uploadFiles\\";
				 //String path = "C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\";
				   String path= "C:\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Wwft\\resources\\images\\uploadFiles";
				// C:\\Users\\dkgur\\git\\ProjectWWFT\\Wwft\\WebContent\\resources\\images\\uploadFiles\\
				 File dir = new File(path);
				 if(!dir.isDirectory()){
					 dir.mkdirs();
				 }
				 
				
				
				 if(!file.isEmpty()){
				 //넘어온 파일을 리스트로 저장
						 //파일 중복명 처리
						 //원래 파일명
						  originalImageName = file.getOriginalFilename();
						 System.out.println("기본 파일명:"+originalImageName);
						
						 //저장되는 파일이름
						 saveImageName = uuid + "_"+ originalImageName;
						 System.out.println("저장 파일명"+saveImageName);
						
						 //저장될 파일 경로
						 savePath = path + saveImageName;
						 
						 //파일 저장
						 file.transferTo(new File(path,saveImageName));
						 //db에 저장될 파일이름 uuid+orginalName
						 profile.setProfileImage(saveImageName);
						 
						 System.out.println(originalImageName);
						 System.out.println(saveImageName);
						
						
				}
				 
			}
			
		
		User user = (User)session.getAttribute("user");
		profileService.addProfile(profile);
		modelAndView.addObject("getProfileList", profileService.getProfileList(user.getTreeNo()));
		modelAndView.setViewName("redirect:/profile/getProfileList");
		return modelAndView;
	}


}