package com.shopping.utils;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.shopping.po.User;
import org.springframework.beans.BeanUtils;


public class LoginFilter extends HttpServlet {
/**
 * 		1》将获取的参数封装成User对象。
		2》用户名校验：用户名不能为null，在3到20个字符之间
	        密码校验，密码不能为null，在3到20个字符之间，如果有
		错误信息，将该信息封装到Map集合中。
		3》创建UserService对象，调用login方法，如果抛出异常
		将异常信息保存到request，转发给login.jsp,如果成功，
		返回user对象，并把该对象保存在session中，重定向到index.jsp
 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		response.setContentType("text/html;charset=utf-8");
//		User user = new User();
//
//		//表单的注入
//		try {
//			BeanUtils.populate(user, request.getParameterMap());
//		} catch (IllegalAccessException e) {
//			e.printStackTrace();
//		} catch (InvocationTargetException e) {
//			e.printStackTrace();
//		}
//
//		Map<String, String > errMap = new HashMap<String, String>();
//		//用户名校验
//		if (user.getUsername()==null || user.getUsername().trim().length()==0 ) {
//			errMap.put("eUsername", "用户名不能为空");
//		}else if(!user.getUsername().matches("^[a-zA-Z\u4e00-\u9fa5]{3,20}$")) {
//			errMap.put("eUsername", "用户名必须大于等于3小于等于20位且必须是字母或者中文");
//		}
//
//		//姓名校验
//		if (user.getName() ==null || user.getName().trim().length()==0 ) {
//			errMap.put("eName", "姓名不能为空");
//		}else if(!user.getUsername().matches("^[a-zA-Z\u4e00-\u9fa5]{2,20}$")) {
//			errMap.put("eName", "姓名必须大于等于2小于等于20位且必须是字母或者中文");
//		}
//
//		//密码校验
//		if (user.getPassword()==null || user.getPassword().trim().length()==0 ) {
//			errMap.put("ePassword", "密码不能为空!");
//		}else if(!user.getPassword().matches("^[0-9]{5,18}$")) {
//			errMap.put("ePassword", "密码只能是数字且长度要大于等于5小于等于18!");
//		}
//
//		//手机号码校验
//		if (user.getTel()==null || user.getTel().trim().length()==0 ) {
//			errMap.put("eTel", "电话不能为空!");
//		}else if(!user.getTel().matches("^[0-9]{7,11}$") ) {
//			errMap.put("eTel", "密码只能是数字且长度要大于等于7小于等于11!");
//		}
//
//		//地址校验
//		if (user.getAddress()==null ||  user.getAddress().trim().length()==0 ) {
//			errMap.put("eAddr", "地址不能为空!");
//		}else if(!user.getAddress().matches("^[0-9]{5,18}$")) {
//		}
//
//
//		// 讲错误信息通过request存储
//		//如果存在错误，存储错误信息，存储user信息，跳回登录页面进行回显
//		if (errMap.size()!=0) {
//			request.setAttribute("errMap", errMap);
//			request.setAttribute("user", user);
//			request.getRequestDispatcher("/Register.jsp").forward(request, response);
//			return;
//		}
		
	}
}
