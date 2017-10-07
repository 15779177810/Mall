<%--
  Created by IntelliJ IDEA.
  User: 华哥哥
  Date: 2017/9/17
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'MyJsp.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">


</head>

<body>
<div align="center">
    商品评论

    <form action="/comment.action" method="post">
        <c:forEach items="${requestScope.orderItems}" var="orderItem">
            <c:set scope="session" var="orderId" value="${orderItem.order_id}"/>
            <table>
            <tr>
                <th>商品编号：${orderItem.goods.goodId}</th>
                <th>商品名称：${orderItem.goods.goodName}</th>
                <th>商品价格：${orderItem.goods.price}</th>
                <th><img src="${orderItem.goods.img}" alt="" width="30" height="30"></th>
            </tr>
        </table>
        <textarea rows="4" cols="60" name="${orderItem.goods.goodId}"></textarea>
        <br>
        <br>
    </c:forEach>

        <br>
        <input type="submit" VALUE="提交评论"/>
    </form>
</div>
</body>
</html>
