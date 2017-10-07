<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>


<html>
	<head>
		<title>删除用户</title>
	</head>
	<body>
		<center>
			恭喜您, 删除成功!
			<br>
			<span id="delay" style="background:red">3</span>秒钟后跳转到上一页面, 或者请点击下面的链接 自己跳转
			<br>
			
<!-- 添加跳转的url -->

		<%-- 	<a href="<%=url%>"><%=url%></a> --%>
		</center>
		<script type="text/javascript">	
			
			
			parent.main.location.reload();
			
		</script>
	</body>
</html>