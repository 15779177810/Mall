<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
</head>

<body>
    <div class="container" style="background: #ffffff">
        <!--header start-->
        <div class="jumbotron">
            <h1>我的个人信息</h1>
            <p>Welcome,${sessionScope.user.username}</p>

            <!--update to row-->
            <div class="row">
                <div class="col-xs-2">
                    <p><a class="btn btn-primary btn-lg" href="goods.action" role="button">返回首页</a></p>
                </div>
                <div class="col-xs-2">
                    <p><a class="btn btn-primary btn-lg" href="UserModify.jsp" role="button">修改我的信息</a></p>
                </div>
                <div class="col-xs-2">
              
                    <p><a class="btn btn-primary btn-lg" href="orders.action?userId=${sessionScope.user.userId}" role="button">浏览以往订单</a></p>
                </div>
                <div class="col-xs-2">
                    <p><a class="btn btn-primary btn-lg" href="Business.jsp?userId=${sessionScope.user.userId}" role="button">点此注册为商家</a></p>
                </div>
            </div>

            <div class="alert alert-success" role="alert">
                <div class="row">
                    <div class="col-xs-3">
                        <p class="lead"> 余额：${sessionScope.account.balance}元</p>
                    </div>
                    <div class="col-xs-3">

                        <h3>

                            <a class="label label-success" href="deposit.jsp" role="button">充值</a>

                        </h3>

                    </div>

                    <div class="col-xs-3">

                        <h3>

                            <a class="label label-success" href="draw.jsp" role="button">提现</a>

                        </h3>

                    </div>

                </div>
            </div>
        </div>

        <div class="page-header" >
            <h1 class="center-block">交易记录 <small>show in table</small></h1>
        </div>

        <!--table start-->
        <table class="table table-bordered table-hover">
            <tr>
                <th class="active">用户名</th>
                <th class="success">类型</th>
                <th class="warning">时间</th>
                <th class="danger">描述</th>
                <th class="info">金额</th>
            </tr>
            <c:forEach items="${sessionScope.businesses}" var="business">
            <tr>
                <td class="active">${sessionScope.user.username}</td>
                <td class="success">${business.type}</td>
                <td class="warning">${business.date}</td>
                <td class="danger">${business.direction}</td>
                <td class="info">${business.balance}</td>
            </tr>
            </c:forEach>
        </table>
        <h5 class="page-header bg-success"></h5>
    </div>
</body>

</html>