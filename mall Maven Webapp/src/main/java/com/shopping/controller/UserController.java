package com.shopping.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.shopping.po.Business;
import com.shopping.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.shopping.po.Account;
import com.shopping.po.User;
import com.shopping.service.AccountService;
import com.shopping.service.UserService;



@Controller
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private AccountService  accountService;
	@Autowired
	private BusinessService businessService;
	
	@RequestMapping("userLogin.action")
	public String queryUserLogin(User user, HttpSession session) throws UnsupportedEncodingException {
		User user1 = userService.login(user);
		if ( null == user1) {
			return "forward:/ToRegister.jsp";
		}else {
			// 把商品数据放在模型中Model model
			session.setAttribute("user",user1);
			return "forward:/info.action";
		}
	}
	
	@RequestMapping("/admin/adminLogin.action")
	public String queryAdminLogin(User user, Model model) {

		//查询表中是否存在对应数据的用户
		User admin = userService.login(user);
		if(null == admin) {
			return "forward:/admin/Login.jsp";
		}
		else if(admin.getSys().equals(1)){
			// 把商品数据放在模型中Model model
			model.addAttribute("admin", admin);
			return "forward:/admin/AdminIndex.jsp";
		}
		return "forward:/admin/Login.jsp";
	}
	
	@RequestMapping("userRegister.action")
	public String registerUser(User user, HttpSession session) {

		//从request请求中获取参数并设入user里
//		user = new User(null, user.getUsername(), user.getUserName(), user.getPassword(), user.getAddress(), user.getTel());
		//将对应数据的用户插入表中
		User user2 = userService.register(user);
		//查询表中是否存在对应数据的用户
		User uu = userService.login(user2);
		if ( null == uu) {
			return "forward:/register.jsp";
		}else {
			// 把用户数据放到模型中
			session.setAttribute("user",uu);
			return "forward:/info.action";
		}
	}
	
	@RequestMapping("userModify.action")
	public String userModify(User user , Model model,HttpServletRequest request) {
		
		//从request请求中获取参数
		String id = request.getParameter("userId");
		Integer userId = Integer.valueOf(id);
		//从request请求中获取参数并设入user里
		//实现用户信息更改
		userService.modify(user,userId);
		
		request.getSession().setAttribute("user",user);
		// 设置逻辑视图
		return "forward:/Login.jsp";
	}
	
	@RequestMapping("/info.action")
	public String toInfo(HttpSession session,Model model){
		User user = (User)session.getAttribute("user");
		Account account = accountService.getBalance(user.getUserId());
		session.setAttribute("account",account);
		List<Business> businesses = businessService.getBusinesses(user.getUserId());
		session.setAttribute("businesses",businesses);
		return "forward:/Login.jsp";
	}

	@RequestMapping("loginOut.action")
	public String loginOut(HttpSession session){
		session.removeAttribute("user");
		return "redirect:index.jsp";
	}
}


