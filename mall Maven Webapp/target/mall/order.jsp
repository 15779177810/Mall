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
            <p>亲爱的${sessionScope.user.username}，你好！！！</p>
        </div>

        <p><a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回主页</a>
            <a class="btn btn-primary btn-lg" href="/info.action" role="button">返回我的信息</a></p>
    </div>

    <div class="page-header">
        <h1 class="center-block">交易记录 <small>show in table</small></h1>
    </div>

    <!--table start-->
    <c:forEach items="${requestScope.orders}" var="order">
        <c:set var="total" value="${0}" scope="request"/>
        <table class="table table-bordered table-hover">
            <tr>
                <td class="active">订单编号: ${order.order_id}</td>
                <td class="success">订单时间: ${order.date}</td>
                <!--仅仅为了填充-->
                <td class="success"></td>
                <td class="success"></td>
                <td class="success"></td>
                <td class="success"></td>
            </tr>
            <tr>
                <th class="active">商品编号</th>
                <th class="success">商品名称</th>
                <th class="warning">商品详情</th>
                <th class="danger">商品单价</th>
                <th class="info">商品数量</th>
                <th class="info">商品图片</th>
            </tr>
            <c:forEach items="${order.orderItems}" var="orderItem">
                <c:set var="total" value="${requestScope.total+orderItem.price*orderItem.count}" scope="request"/>
                <tr>
                    <td class="active">${orderItem.order_item_id}</td>
                    <td class="success">${orderItem.good_name}</td>
                    <td class="warning">${orderItem.good_desc}</td>
                    <td class="danger">${orderItem.price}</td>
                    <td class="info">${orderItem.count}</td>
                    <td class="info"><img src="${orderItem.img}" height="50" width="50"></td>
                </tr>
            </c:forEach>
            <tr>
                <td class="active"></td>
                <td class="success"></td>
                <td class="warning">合计：</td>
                <td class="danger">${requestScope.total}</td>
                <td class="info">
                    <c:choose>
                        <c:when test="${order.state == 0}">
                            待发货
                        </c:when>
                        <c:when test="${order.state == 1}">
                            <a href="/confirmOrder.action?order_id=${order.order_id}&userId=${sessionScope.user.userId}" class="label label-success" role="button">确认收货</a>
                        </c:when>
                        <c:when test="${order.state == 2}">
                            <a href="/toComment.action?orderId=${order.order_id}" class="label label-success" role="button">评论</a>
                        </c:when>
                        <c:when test="${order.state == 3}">
                            交易成功
                        </c:when>

                    </c:choose>

                </td>
                <td class="info"></td>
            </tr>
        </table>

        <h5 class="page-header bg-success"></h5>
    </c:forEach>
</div>
</body>

</html>