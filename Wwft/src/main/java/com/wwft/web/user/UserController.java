package com.wwft.web.user;

import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wwft.service.domain.Tree;
import com.wwft.service.domain.User;
import com.wwft.service.tree.TreeService;
import com.wwft.service.user.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@Autowired
	@Qualifier("treeServiceImpl")
	private TreeService treeService;
	
	public UserController() {
		
		System.out.println("User Controller"+this.getClass());
	}


	@RequestMapping( value="addUser", method=RequestMethod.GET )
	public String addUser() throws Exception{
	
		System.out.println("/user/addUser : GET");
		
		return "redirect:/user/addUser.jsp";
	}
	
	
	@RequestMapping( value = "addUser", method = RequestMethod.POST)
	public String addUser(@ModelAttribute("user") User user,@ModelAttribute("tree") Tree tree) throws Exception{
		System.out.println("/user/addUser: POST");
		System.out.println(user);
		System.out.println(tree);
		userService.addUser(user);
		treeService.addTree(tree);
		user.setTreeNo(treeService.getTreeNo(user.getUserId()));
		System.out.println("확인"+ treeService.getTreeNo(user.getUserId()));
		
		userService.updateUser(user);
		
		return "redirect:/user/login.jsp";
	}
	
	
	@RequestMapping( value="getUser", method=RequestMethod.GET  )
	public String getUser( @RequestParam("userId") String userId , Model model, HttpSession session ) throws Exception {
		
		User sessionUser = (User)session.getAttribute("user");
		
		if(sessionUser.getUserId().equals(userId) || sessionUser.getUserId().equals("admin")) {
		System.out.println("/user/getUser : GET");
		System.out.println("/user/getUser start..");		
		//Business Logic
		User user = userService.getUser(userId);
		Tree tree = treeService.getUserTree(user.getTreeNo());
		// Model 과 View 연결
		model.addAttribute("user", user);
		model.addAttribute("tree", tree);
		
		return "forward:/user/getUser.jsp";
		}else {
			return "redirect:/";
		}
	}
	
	
	@RequestMapping( value="updateUser", method=RequestMethod.GET)
	public String updateUser(@RequestParam("userId") String userId , Model model ) throws Exception {
		
		System.out.println("/user/updateUser : GET");
		//Business Logic
		User user = userService.getUser(userId);
		// Model 과 View 연결
		model.addAttribute("user", user);
		
		
		return "forward:/user/updateUser.jsp";
	}
	
	@RequestMapping( value="updateUser", method=RequestMethod.POST )
	public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

		System.out.println("/user/updateUser : POST");
		//Business Logic
		userService.updateUser(user);
		
		String sessionId=((User)session.getAttribute("user")).getUserId();
		if(sessionId.equals(user.getUserId())){
			session.setAttribute("user", user);
		}
		
		return "redirect:/user/getUser?userId="+user.getUserId();
	}
	
	
	@RequestMapping(value = "getUserList", method = RequestMethod.GET)
	public String getUserList(HttpSession session, Model model) throws Exception{
	
		System.out.println("/user/getUserList start..");
		// 1. 관리자 세션 제어
		User user = (User)session.getAttribute("user");
		String id = user.getUserId();
		
//		String id = (String) session.getAttribute("id");
		if(id == null || !(id.equals("admin"))){
			return "redirect:/";
	}
			
		System.out.println("/user/getUserList end..");
		// 2. 서비스 - 회원 목록 가져오는 동작
		//List<MemberVO> memberList = service.getMemberList();
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("list", userService.getUserList());
		// 3. 정보 저장 -> 뷰(/member/memberlist.jsp) -> (Model 객체 )
		model.addAttribute("userList", map);

		// 4. 페이지이동
		return "forward:/user/listUser.jsp";
	}	
	
	
	@RequestMapping( value="login", method=RequestMethod.GET )
	public String login() throws Exception{
		
		System.out.println("/user/login : GET");

		return "/user/login.jsp";
	}
	
	
	@RequestMapping( value="login", method=RequestMethod.POST )
	public String login(@ModelAttribute("user") User user , HttpSession session, HttpServletResponse response) throws Exception{
		
		System.out.println("/user/login : POST");
		//Business Logic
		User dbUser=userService.getUser(user.getUserId());
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
		}
		if(dbUser.getUserId().equals("admin")) {
			return "redirect:/admin/admin.jsp";
			
		}else {
			return "redirect:/profile/getProfileList";
		}
		
		
	}
	
	
	@RequestMapping( value="logout", method=RequestMethod.GET )
	public String logout(HttpSession session ) throws Exception{
		
		System.out.println("/user/logout : POST");
		
		session.invalidate();
		
		return "redirect:/user/login.jsp";	
	}
	
	
	@RequestMapping( value="removeUser", method=RequestMethod.POST )
	public String removeUser(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
		
		System.out.println("/user/removeUser : POST");
		
		session.invalidate();
		
		return "redirect:/user/removeUser.jsp";
	}
	
	@RequestMapping( value="findId", method=RequestMethod.GET )
	public String findId(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
		
		System.out.println("/user/findId : GET");
		
		session.invalidate();
		
		return "redirect:/user/findId.jsp";
	}
	
	@RequestMapping( value="findPassword", method=RequestMethod.GET )
	public String findPassword(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
		
		System.out.println("/user/findPassword : GET");
		
		session.invalidate();
		
		return "redirect:/user/findPassword.jsp";
	}
	
	@RequestMapping(value = "post")
	@ResponseBody
	public String record(@RequestParam("userid") String userID) throws Exception {
		System.out.println("ajax call :" + userID);
		String returnValue = "";
		boolean isUser =  userService.checkDuplication(userID);
		if(isUser == false) {
			returnValue = "error";
		}
		else {
			returnValue = "success";
		}
		return returnValue;
		
	}
//	@ResponseBody
//	@RequestMapping(value = "/ID_Check", produces="text/plane")
//	public String ID_Check(@RequestBody String paramData,String userId) throws ParseException {
//		//클라이언트가 보낸 ID값
//		System.out.println(userId);
//		UserDao dao = sqlSession.getMapper(UserDao.class);
//		User daoIm = dao.Id_Check(userId);
//		
//		if(dao != null) {//결과 값이 있으면 아이디 존재	
//			return "-1";
//		} else {		//없으면 아이디 존재 X
//			System.out.println("null");
//			return "0";
//		}
	@RequestMapping( value="checkDuplication", method=RequestMethod.POST )
	public String checkDuplication( @RequestParam("userId") String userId , Model model ) throws Exception{
		
		System.out.println("/user/checkDuplication : POST");
		//Business Logic
		boolean result=userService.checkDuplication(userId);
		// Model 과 View 연결
		model.addAttribute("result", new Boolean(result));
		model.addAttribute("userId", userId);

		return "forward:/user/checkDuplication.jsp";
	}
	
}