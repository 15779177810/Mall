<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>


<head>
    <base href="<%=basePath%>">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>商城 - 网上精品会员店</title>
    <link href="images/new.css" rel="stylesheet" type="text/css">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <style>
        body {
            font-family: 'microsoft yahei', Arial, sans-serif;
            color: #898989;
        }

        .shape {
            border-style: solid;
            border-width: 0 80px 80px 0;
            float: right;
            height: 0px;
            width: 0px;
            -ms-transform: rotate(360deg);
            /* IE 9 */
            -o-transform: rotate(360deg);
            /* Opera 10.5 */
            -webkit-transform: rotate(360deg);
            /* Safari and Chrome */
            transform: rotate(360deg);
        }

        .speical {
            background: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            margin: 15px 0;
            overflow: hidden;
        }

        .speical:hover {
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -ms-transform: scale(1.1);
            -o-transform: scale(1.1);
            transform: rotate scale(1.1);
            -webkit-transition: all 0.4s ease-in-out;
            -moz-transition: all 0.4s ease-in-out;
            -o-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
        }

        .shape {
            border-color: rgba(255, 255, 255, 0) #d9534f rgba(255, 255, 255, 0) rgba(255, 255, 255, 0);
        }

        .speical-default {
            border: 1px solid #d9534f;
        }

        .speical-radius {
            border-radius: 5px;
        }

        .shape-text {
            color: #fff;
            font-size: 14px;
            position: relative;
            right: -45px;
            top: 2px;
            white-space: nowrap;
            -ms-transform: rotate(45deg);
            /* IE 9 */
            -o-transform: rotate(45deg);
            /* Opera 10.5 */
            -webkit-transform: rotate(45deg);
            /* Safari and Chrome */
            transform: rotate(45deg);
        }

        .text-special-default {
            color: #d9534f;
        }

        .speical-content {
            padding: 0 20px 10px;
        }
    </style>
</head>

<body>
<div class="container" style="background: #ffffff">

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1"
                        aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">网上商城</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <!-- <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
                    <li><a href="#">&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
                </ul>

                <c:if test="${sessionScope.user ==null}">
                    <form class="navbar-form navbar-left" action="userLogin.action" method="post">
                        <div class="form-group">
                            <label class="sr-only" for="username">账号</label>
                            <input type="username" class="form-control" name="username" placeholder="请输入账号">
                        </div>
                        <div class="form-group">
                            <label class="sr-only" for="exampleInputPassword3">密码</label>
                            <input type="password" class="form-control" name="password" placeholder="请输入密码">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 记住我？
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">登陆</button>
                        <a class="btn btn-default" href="register.jsp">注册</a>

                    </form>
                </c:if>

                <c:if test="${sessionScope.user != null}">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="/#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">余额:${sessionScope.account.balance}<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/deposit.jsp">充值</a></li>
                                <li><a href="/draw.jsp">提现</a></li>
                                <!-- <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li> -->
                            </ul>
                        </li>
                        <!-- <li><a href="#">Link</a></li> -->
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">${sessionScope.user.username}<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/orders.action?userId=${sessionScope.user.userId}">我的订单</a></li>
                                <li><a href="/info.action?">个人详情</a></li>
                                <c:if test="${sessionScope.user.sys ==1}">
                                    <li><a href="goodlist.action">店铺商品管理</a></li>
                                    <li><a href="shopOrders.action?userId=${sessionScope.user.userId}">店铺订单</a></li>
                                </c:if>
                                <li><a href="/loginOut.action">注销</a></li>
                                <!-- <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li> -->
                            </ul>
                        </li>
                    </ul>
                </c:if>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>


    <!--header start-->
    <div class="jumbotron">
        <h1 style="color:black">网上商城</h1>
        <p>欢迎来亿期网上商城</p>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured
            content
            or information.</p>
        <!--update to row-->
        <div class="row">
            <div class="col-xs-2">
                <p><a class="btn btn-primary btn-lg" href="CarBuy.jsp" role="button">我的购物车</a></p>

            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">

        <c:forEach items="${sessionScope.goods}" var="good">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                <div class="speical speical-default speical-radius">
                    <div class="shape">
                        <div class="shape-text">
                            促销
                        </div>
                    </div>
                    <div class="speical-content">

                        <a href="<c:url value='/goodsbyid.action?goodId=${good.goodId}'/>">
                            <h3 class="text-special-default">
                                    ${good.goodName}
                            </h3></a>

                        <font color="black" size="2" style="font-weight:bold;font-style:italic;">
                            <a href="<c:url value='/goodsbyid.action?goodId=${good.goodId}'/>">促销价：${good.price}</a></font>
                        <br>
                            <%-- <p>促销价：${good.price}</p> --%>

                        <p>

                            <a href="<c:url value='/goodsbyid.action?goodId=${good.goodId}'/>"><img
                                    class="img-responsive img-rounded" src="${good.img}" alt="MI"></a>

                        </p>
                        <p style="font-size: 16">
                                ${good.goodDesc}
                        </p>
                        <a href="carGoods.action?goodId=${good.goodId}" style="color:black; font-size:16px;">加入购物车</a>

                    </div>
                </div>
            </div>
        </c:forEach>

    </div>
</div>
</body>

</html>