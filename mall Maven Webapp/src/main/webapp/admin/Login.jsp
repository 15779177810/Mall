<%@ page language="java" contentType="text/html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/admin/adminLogin.action" method="post">
<table border="1" align="center">
	<tr>
		<td>admin name:</td>
		<td><input type="text" size="10" name="username"/></td>
	</tr>
	<tr>
		<td>admin password:</td>
		<td><input type="password" size="10" name="password"/></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="login"/><input type="reset" value="reset"/></td>
	</tr>
</table>
</form>
</body>
</html>