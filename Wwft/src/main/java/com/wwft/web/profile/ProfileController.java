package com.wwft.web.profile;

import java.io.File;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	public String addProfile(@ModelAttribute() Profile profile ,HttpSession session ,Model model  ) throws Exception{
		System.out.println("addProfile: POST");
		System.out.println(profile);
		
		User user = (User)session.getAttribute("user");
		
		profileService.addProfile(profile);
		model.addAttribute("getProfileList", profileService.getProfileList(user.getTreeNo()));
		return "redirect:/profile/getProfileList";
	}
	
	@RequestMapping( value="getProfile", method=RequestMethod.GET )
	public String login(@RequestParam("profileNo") int profileNo , HttpSession session, HttpServletResponse response) throws Exception{
		System.out.println("/profile/getProfile : GET");
		//Business Logic
		
		Profile dbprofile = profileService.getProfile(profileNo);
		//ȸ���� ���� ��ȣ�� ������ ��ȣ�� ���ƾ��� ������ڵ�
		User user = (User) session.getAttribute("user");
		System.out.println(dbprofile.getTreeNo());
		// Model �� View ����
		if( user.getTreeNo()==(dbprofile.getTreeNo())){
			System.out.println("���� ����ǳ� ??????????");
			session.setAttribute("profile", dbprofile);
		}
		System.out.println("�������̹��� "+dbprofile);
		return "/tree/getUserTree";
	}

	@RequestMapping( value="updateProfile", method=RequestMethod.GET)
	public String updateProfile(@RequestParam("profileNo") int profileNo , Model model ) throws Exception {
		
		System.out.println("/user/updateProfile : GET");
		//Business Logic
		Profile profile = profileService.getProfile(profileNo);
		// Model �� View ����
		model.addAttribute("profile", profile);
		
		
		return "forward:/profile/updateProfile.jsp";
	}
	
	@RequestMapping( value="updateProfile", method=RequestMethod.POST )
	public String updateProfile( @ModelAttribute("profile") Profile profile , Model model , HttpSession session) throws Exception{

		System.out.println("/profile/updateProfile : POST");
		//Business Logic
		profileService.updateProfile(profile);
		
		Profile dbprofile = profileService.getProfile(profile.getProfileNo());
		System.out.println(dbprofile.getTreeNo());
		System.out.println(profile.getTreeNo());
		// Model �� View ����
		if( profile.getTreeNo()==(dbprofile.getTreeNo())){
			session.setAttribute("profile", dbprofile);
		}
		
//		String sessionId=((User)session.getAttribute("user")).getUserId();
//		if(sessionId.equals(user.getUserId())){
//			session.setAttribute("user", user);
//		}
		
		return "redirect:/profile/updateProfile?profileNo="+profile.getProfileNo();
	}

	@RequestMapping(value = "getProfileList", method = RequestMethod.GET)
	public String getPorfileList(HttpSession session, Model model) throws Exception{
	
		System.out.println("/profile/getProfileList start..");
		// 1. ������ ���� ����
		System.out.println("/profile/getProfileList end..");
		// 2. ���� - ȸ�� ��� �������� ����
		//List<MemberVO> memberList = service.getMemberList();
		User user =(User)session.getAttribute("user");
		// 3. ���� ���� -> ��(/member/memberlist.jsp) -> (Model ��ü )
		model.addAttribute("getProfileList", profileService.getProfileList(user.getTreeNo()));
		// 4. �������̵�
		return "forward:/profile/getProfileList.jsp";

	}	
	@RequestMapping(value = "updateProfileList", method = RequestMethod.GET)
	public String updatePorfileList(HttpSession session, Model model) throws Exception{
	
		System.out.println("/profile/getProfileList start..");
		// 1. ������ ���� ����
		System.out.println("/profile/getProfileList end..");
		// 2. ���� - ȸ�� ��� �������� ����
		//List<MemberVO> memberList = service.getMemberList();
		User user =(User)session.getAttribute("user");
		// 3. ���� ���� -> ��(/member/memberlist.jsp) -> (Model ��ü )
		model.addAttribute("updateProfileList", profileService.getProfileList(user.getTreeNo()));
		// 4. �������̵�
		return "forward:/profile/updateProfileList.jsp";

	}	

}

