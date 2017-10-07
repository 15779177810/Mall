<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>服务系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<center>
  		<h2>您的账号不存在，请注册！</h2>
  		<h3>正在为您跳转到注册页面！！！</h3>
  		<% response.setHeader("Refresh","3;URL=register.jsp");%>
  		<td>
  		
  		<a href="index.jsp" border="0" height="47" width="90">点此处可回到商城主页面</a>
             
  	</center>
  </body>
</html>
