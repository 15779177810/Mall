<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="cn">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <style>
        .col-center-block {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<!--<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">

    <link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap.min.js"></script>

    <style>
        .col-center-block {
            float: none;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>-->

<body>
<div class="container" style="background: #ffffff">
    <!--header start-->
    <div class="jumbotron">
        <p><a class="btn btn-primary btn-lg" href="#" role="button">返回主页</a></p>
        <h1>评论</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured
            content
            or information.</p>

    </div>

    <div class="page-header">
        <h1 class="text-center" style="color:blue">请进行评论
            <small style="color:aqua">show in table</small>
        </h1>
    </div>

    <form action="/comment.action" method="post">
        <%--<div class="alert alert-success" role="alert">
            <p class="text-center">
                商品编号：1 商品名称：变形金刚 商品价格：100
            </p>
        </div>--%>
        <c:forEach items="${requestScope.orderItems}" var="orderItem">
            <c:set scope="session" var="orderId" value="${orderItem.order_id}"/>
            <table class="table table-bordered table-hover">
                <tr>
                    <td class="active">商品编号：${orderItem.goods.goodId}</td>
                    <td class="success">商品名称：${orderItem.goods.goodName}</td>
                    <td class="warning">商品价格：${orderItem.goods.price}</td>
                    <td class="info"><img src="${orderItem.goods.img}" alt="" width="30" height="30"></td>
                </tr>
            </table>
            <div class="form-group">
                <textarea class="form-control" name="${orderItem.goods.goodId}" rows="4" placeholder="请输入评论"></textarea>
            </div>
        </c:forEach>


        <div class="form-group">
            <div class="col-sm-offset-5 col-sm-10">
                <button type="submit" class="btn btn-success">评论</button>
            </div>
        </div>
    </form>

</div>
</body>

</html>