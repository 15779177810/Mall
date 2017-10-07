package com.shopping.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shopping.po.Shop;
import com.shopping.po.User;
import com.shopping.service.ShopService;
import com.shopping.service.UserService;


@Controller
public class BusinessController {

	@Autowired
	private ShopService shopService;
	@Autowired
	private UserService userService;
	
	  @RequestMapping("toShopBusiness.action")
	    public String toShopBusiness(HttpServletRequest request , HttpSession session){
		  
		  String shopName = request.getParameter("shopName");
		  String sdesc = request.getParameter("sdesc");
		  Integer userId = Integer.parseInt(request.getParameter("userId"));
		  
		  Shop shop = new Shop(null, shopName, userId, sdesc);
		  shopService.insertShop(shop);
		 
		  //从request请求中获取参数并设入user里
		  User user  = (User) session.getAttribute("user");
		  user.setSys(1);
		  session.setAttribute("user",user);
		  //实现用户信息更改
		  userService.modify(user,userId);
			
		  return "forward:/Login.jsp";
		  
	    }
	
}

