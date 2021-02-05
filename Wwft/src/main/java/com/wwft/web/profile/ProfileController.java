package com.wwft.web.profile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wwft.service.domain.Profile;
import com.wwft.service.domain.User;
import com.wwft.service.profile.ProfileService;


@Controller
@RequestMapping("/profile/*")
public class ProfileController {
	
	@Autowired
	@Qualifier("profileServiceImpl")
	private ProfileService profileService;
	
	
	
	public ProfileController() {
		System.out.println("Profile Controller"+this.getClass());
	}


	
	@RequestMapping( value="addProfile", method=RequestMethod.GET )
	public String addProfile() throws Exception{
	
		System.out.println("/profile/addProfile : GET");
		
		return "redirect:/profile/addProfile.jsp";
	}
	
	@RequestMapping( value = "addProfile", method = RequestMethod.POST)
	public String addProfile(@ModelAttribute() Profile profile) throws Exception{
		System.out.println("addProfile: POST");
		System.out.println(profile);
		
		profileService.addProfile(profile);
		
		return "redirect:/profile/getProfile";
	}
	
	@RequestMapping( value="getProfile", method=RequestMethod.GET )
	public String login(@ModelAttribute("profile") Profile profile , HttpSession session, HttpServletResponse response) throws Exception{
		System.out.println("/profile/getProfile : GET");
		//Business Logic
		Profile dbprofile = profileService.getProfile(profile.getProfileNo());
		// Model 과 View 연결
		if( profile.getTreeNo()==(dbprofile.getTreeNo())){
			session.setAttribute("profile", dbprofile);
		}


		
		return "redirect:/profile/getProfile.jsp";
	}

	@RequestMapping(value = "getProfileList", method = RequestMethod.GET)
	public String getPorfileList(HttpSession session, Model model) throws Exception{
	
		System.out.println("/profile/getProfileList start..");
		// 1. 관리자 세션 제어
			
		System.out.println("/profile/getProfileList end..");
		// 2. 서비스 - 회원 목록 가져오는 동작
		//List<MemberVO> memberList = service.getMemberList();
		User user =(User)session.getAttribute("user");
		// 3. 정보 저장 -> 뷰(/member/memberlist.jsp) -> (Model 객체 )
		model.addAttribute("getProfileList", profileService.getProfileList(user.getTreeNo()));

		// 4. 페이지이동
		return "forward:/profile/getProfileList.jsp";
	}	
	
}

