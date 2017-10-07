<%@ page language="java" contentType="text/html; charset=GB18030" import="java.util.*"
	pageEncoding="GB18030"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>最后确认</title>

</head>
<body>

<table align="center" border="1">
	<tr>
		<td>产品ID</td>
		<td>产品名称</td>
		<td>购买数量</td>
		<td>单价</td>
		<td>总价</td>

	</tr>
	
	<!-- 这里是显示提交的购物车的所有项目以供用户确认订单 -->
	<%-- <%
	for(Iterator<CartItem> it = items.iterator(); it.hasNext(); ) {
		CartItem ci = it.next();
		%>
		<tr>
			<td><%=ci.getProduct().getId() %></td>
			<td><%=ci.getProduct().getName() %></td>
			<td><%=ci.getCount() %></td>
			<td><%=ci.getProduct().getMemberPrice() %></td>
			<td><%=ci.getProduct().getMemberPrice() * ci.getCount() %></td>
			
		</tr>
		<%
	}
	%> --%>
	
	
	<tr>
		<td colspan=4>
			
		</td>
		<td>
			总价: <%=%>
		</td>
	</tr>
	<tr>
		<td colspan=5>
			<form action="order.jsp" method="post">
			欢迎你: <%=%> <br>
			phone: <%= %> <br>
			Addr : <textarea name="addr"><%= %></textarea>
			<input type="submit" value="确认下单"> 
			</form>
		</td>
	</tr>
</table>

</body>
</html>
