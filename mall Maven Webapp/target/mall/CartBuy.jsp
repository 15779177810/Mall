<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>���ﳵ</title>

 <script type="text/javascript">
        function makesure() {
            var msg = "���Ƿ�ȷ������";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }

</script>

</head>

<body>


<a href="index.jsp">��ҳ</a> �װ���${sessionScope.user.username},����<br>

<form action="Buy.jsp" method="get">
<input type="hidden" name="action" value="update"/>
<table align="center" border="1">
	<tr>
		<td>��ƷID</td>
		<td>��Ʒ����</td>
		<td>��������</td>
		<td>����</td>
		<td>�ܼ�</td>
		<td>����</td>
	</tr>
	
	<!-- ������ѭ��ȡ�����빺�ﳵ����Ŀ -->
	
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
				
				<a href="Buy.jsp?action=delete&id=<%=ci.getProduct().getId() %>">ɾ��</a>
				
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
                <td>�������:${order.order_id}</td>
                <td>��������:${order.date}</td>
            </tr>
            <tr>
                <th>��Ʒ���</th>
                <th>��Ʒ����</th>
                <th>��Ʒ����</th>
                <th>�۸�</th>
                <th>����</th>
                <th>ͼƬ</th>
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
                <td align="right">�ϼ�:</td>
                <td>${requestScope.total}</td>
                <td>
                    <c:choose>
                        <c:when test="${order.state == 0}">
                            ������
                        </c:when>
                        <c:when test="${order.state == 1}">
                            <a href="/confirmOrder.action?order_id=${order.order_id}&userId=${sessionScope.user.userId}" onclick="javascript:return makesure();">ȷ���ջ�</a>
                        </c:when>
                        <c:when test="${order.state == 2}">
                            <a href="">����</a>
                        </c:when>
                        <c:when test="${order.state == 3}">
                            ���׳ɹ�
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
				
				<a href="Buy.jsp?action=delete&id=<%=ci.getProduct().getId() %>">ɾ��</a>
				
			</td>
		</tr>
		<%
	}
	%>  --%>
	
	
	<tr>
		<td colspan=6>
			<a href="Confirm.jsp">�µ�</a>
			<a href="javascript:document.forms[0].submit()">�޸�</a>
			
			
		</td>
	</tr>
</table>
</form>
</body>
</html>
