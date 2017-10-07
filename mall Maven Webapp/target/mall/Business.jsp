<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>自服务系统</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/style.css" rel="stylesheet">

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

<body>
    <div class="container" style="background: #ffffff">
        <!--header start-->
        <div class="jumbotron">
            <p><a class="btn btn-primary btn-lg" href="#" role="button">返回主页</a></p>
            <h1 style="color:red">商家申请页面</h1>
            <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content
                or information.</p>
            <div class="alert alert-success" role="alert">
                <p>亲爱的${sessionScope.user.username}，你正在申请成为商家，请认真填写下面的内容！</p>
            </div>

            <!--start addMoney form-->
            <div class="col-xs-6 col-center-block">
                <form class="form-horizontal" action="toShopBusiness.action?userId=${sessionScope.user.userId}" method="post">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">店铺名称:</label>
                        <div class="col-sm-10">
                            <input type="name" class="form-control" name="shopName" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">店铺描述:</label>
                        <div class="col-sm-10">
                            <textarea rows="2" cols="60" name="sdesc"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">商家ID:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPassword3" readonly="readonly" value="${sessionScope.user.userId}">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success">成为商家</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</body>

</html>