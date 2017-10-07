<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="cn">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="images/new.css" rel="stylesheet" type="text/css">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<div class="container" style="background: #ffffff">
    <!--header start-->
    <div class="jumbotron">
        <h1>我的订单</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content
            or information.</p>
        <div class="alert alert-success" role="alert">
            <p>亲爱的商家${sessionScope.user.username}，你好！！！</p>
        </div>

        <p><a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回主页</a>
            <a class="btn btn-primary btn-lg" href="/info.action" role="button">返回我的信息</a></p>
    </div>

    <div class="page-header">
        <h1 class="center-block">店铺订单 <small>show in table</small></h1>
    </div>

    <!--table start-->
    <c:forEach items="${requestScope.shopOrders}" var="shopOrder">
        <table class="table table-bordered table-hover">
            <tr>
                <td class="active">订单编号: ${shopOrder.orderId}</td>
                <td class="success">订单时间: ${shopOrder.date}</td>
                <!--仅仅为了填充-->
                <td class="success">买家：${shopOrder.buyerName}</td>
            </tr>
            <tr>
                <th class="active">商品编号</th>
                <th class="success">商品名称</th>
                <th class="info">商品图片</th>
            </tr>
            <c:forEach items="${shopOrder.goods}" var="good">
                <tr>
                    <td class="active">${good.goodId}</td>
                    <td class="success">${good.goodName}</td>
                    <td class="info"><img src="${good.img}" height="50" width="50"></td>
                </tr>
            </c:forEach>
            <tr>
                <td class="warning"></td>
                <td class="danger"></td>
                <td class="info">
                    <c:choose>
                        <c:when test="${shopOrder.state == 0}">
                            <a href="sendOutGood.action?orderId=${shopOrder.orderId}" class="label label-success" role="button">确认发货</a>
                        </c:when>
                        <c:when test="${shopOrder.state == 1}">
                            已发货
                        </c:when>
                        <c:when test="${shopOrder.state == 2}">
                            待评价
                        </c:when>
                        <c:when test="${shopOrder.state == 3}">
                            交易成功
                        </c:when>

                    </c:choose>

                </td>
            </tr>
        </table>

        <h5 class="page-header bg-success"></h5>
    </c:forEach>
</div>
</body>

</html>