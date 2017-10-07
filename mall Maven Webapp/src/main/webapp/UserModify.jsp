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
            <!--update to row-->
            <div class="row">
                <div class="col-xs-2">
                    <p><a class="btn btn-primary btn-lg" href="/info.action" role="button">返回首页</a></p>
                </div>
            </div>

            <h1 class="text-center">修改信息</h1>
            <p class="text-center">开启您购物的奇妙之旅</p>
            <h5 class="page-header bg-default"></h5>

            <!--register start-->
            <form class="form-horizontal" action="userModify.action" method="post">

                <div class="form-group ">
                    <label for="inputEmail3" class="col-sm-2 control-label">用户id</label>
                    <div class="col-sm-10 ">
                        <input type="text" class="form-control" name="userId" value="${sessionScope.user.userId}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="username" value="${sessionScope.user.username}">
                    </div>
                </div>


                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="tel" value="${sessionScope.user.tel}">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">送货地址</label>
                    <div class="col-sm-10">
                        <textarea name="address" class="form-control" rows="3" >${sessionScope.user.address}</textarea>
                    </div>
                </div>

                <div class="form-group center-block">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">修改</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</body>

</html>