<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>购物车</title>

 <script type="text/javascript">
        function makesure() {
            var msg = "您是否确定购买？";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }

</script>

</head>

<body>


<a href="index.jsp">主页</a> 亲爱的${sessionScope.user.username},您好<br>

<form action="Buy.jsp" method="get">
<input type="hidden" name="action" value="update"/>
<table align="center" border="1">
	<tr>
		<td>产品ID</td>
		<td>产品名称</td>
		<td>购买数量</td>
		<td>单价</td>
		<td>总价</td>
		<td>处理</td>
	</tr>
	
	<!-- 这里是循环取出加入购物车的项目 -->
	
<%-- 	<%
	for(Iterator<CartItem> it = items.iterator(); it.hasNext(); ) {
		CartItem ci = it.next();
		%>
		<tr>
			<td><%=ci.getProduct().getId() %></td>
			<td><%=ci.getProduct().getName() %></td>
			<td>
				<input type="text" size=3 name="<%="p" + ci.getProduct().getId() %>" value="<%=ci.getCount() %>" style="width: 45px; ">				
			</td>
			<td><%=ci.getProduct().getNormalPrice() %></td>
			<td><%=ci.getProduct().getNormalPrice()*ci.getCount() %></td>
			<td>
				
				<a href="Buy.jsp?action=delete&id=<%=ci.getProduct().getId() %>">删除</a>
				
			</td>
		</tr>
		<%
	}
	%> --%>
<%-- 	
	
	<div align="center">
    <c:forEach items="${requestScope.orders}" var="order">
        <table border="1">
            <tr>
                <td>订单编号:${order.order_id}</td>
                <td>订单日期:${order.date}</td>
            </tr>
            <tr>
                <th>商品编号</th>
                <th>商品名称</th>
                <th>商品描述</th>
                <th>价格</th>
                <th>数量</th>
                <th>图片</th>
            </tr>
            <c:set var="total" value="${0}" scope="request"/>
            <c:forEach items="${order.orderItems}" var="orderItem">
                <tr align="center">
                    <td>${orderItem.good_id}</td>
                    <td>${orderItem.good_name}</td>
                    <td>${orderItem.good_desc}</td>
                    <td>${orderItem.price}</td>
                    <td>${orderItem.count}</td>
                    <td>${orderItem.img}</td>
                    <c:set var="total" scope="request" value="${requestScope.total + orderItem.price}"/>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <td align="right">合计:</td>
                <td>${requestScope.total}</td>
                <td>
                    <c:choose>
                        <c:when test="${order.state == 0}">
                            待发货
                        </c:when>
                        <c:when test="${order.state == 1}">
                            <a href="/confirmOrder.action?order_id=${order.order_id}&userId=${sessionScope.user.userId}" onclick="javascript:return makesure();">确认收货</a>
                        </c:when>
                        <c:when test="${order.state == 2}">
                            <a href="">评价</a>
                        </c:when>
                        <c:when test="${order.state == 3}">
                            交易成功
                        </c:when>
                    </c:choose>
                </td>
            </tr>
        </table>
        <br>
    </c:forEach>
</div>
	
	
	 --%>
	
	
	
	
<%-- 	<%
	for(Iterator<CartItem> it = items.iterator(); it.hasNext(); ) {
		CartItem ci = it.next();
		%>
		<tr>
			<td><%=ci.getProduct().getId() %></td>
			<td><%=ci.getProduct().getName() %></td>
			<td>
				<input type="text" size=3 name="<%="p" + ci.getProduct().getId() %>" value="<%=ci.getCount() %>" style="width: 45px; ">				
			</td>
			<td><%=ci.getProduct().getNormalPrice() %></td>
			<td><%=ci.getProduct().getNormalPrice()*ci.getCount() %></td>
			<td>
				
				<a href="Buy.jsp?action=delete&id=<%=ci.getProduct().getId() %>">删除</a>
				
			</td>
		</tr>
		<%
	}
	%>  --%>
	
	
	<tr>
		<td colspan=6>
			<a href="Confirm.jsp">下单</a>
			<a href="javascript:document.forms[0].submit()">修改</a>
			
			
		</td>
	</tr>
</table>
</form>
</body>
</html>
