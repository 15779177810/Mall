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
            <p><a class="btn btn-primary btn-lg" href="#" role="button">返回主页</a></p>
            <h1>欢迎提现，${sessionScope.user.username}</h1>
            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content
                or information.</p>
            <div class="alert alert-success" role="alert">
                <p>亲爱的${sessionScope.user.username}，你当前余额为${sessionScope.account.balance}</p>
            </div>

            <!--start addMoney form-->
            <div class="col-xs-6 col-center-block">
                <form class="form-inline" action="draw.action" method="post">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                        <div class="input-group">
                            <div class="input-group-addon">请输入金额：</div>
                            <input type="hidden" name="userId" value="${sessionScope.user.userId}">
                            <input type="text" class="form-control" name="money" placeholder="充值数目">
                            <div class="input-group-addon">.00￥</div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary" >提现</button>
                </form>
            </div>

        </div>
    </div>
</body>

</html>