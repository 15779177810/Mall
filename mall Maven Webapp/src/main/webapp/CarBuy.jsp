<%@page import="com.shopping.vo.GoodsVo" %>
<%@page import="com.shopping.po.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<a href="basepath"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="cn">

<head>
    <title></title>
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

        <div class="row">
            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-3">
                <p><a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回主页</a></p>
            </div>

            <div class="col-lg-2 col-md-6 col-sm-6 col-xs-3">
                <p><a class="btn btn-primary btn-lg" href="goods.action" role="button">浏览商品</a></p>
            </div>
        </div>

        <h1>我的购物车</h1>
        <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured
            content
            or information.</p>
        <div class="alert alert-success" role="alert">
            <p>你已选购以下商品：</p>
        </div>

        <div class="table-responsive m-t">

            <a href="TestGood.jsp"></a>
            <div class="shopping_list_top">您已选购以下商品</div>
            <div class="shopping_list_border">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr class="shopping_list_title">
                        <td class="shopping_list_title_1">商品图片</td>
                        <td class="shopping_list_title_2">商品编号</td>
                        <td class="shopping_list_title_3">商品名</td>
                        <td class="shopping_list_title_4">商品描述</td>
                        <td class="shopping_list_title_5">商城价</td>
                        <td class="shopping_list_title_6">数量</td>
                        <td class="shopping_list_title_7">删除</td>
                    </tr>


                    <c:forEach items="${sessionScope.shops}" var="shop">

                        <c:forEach items="${sessionScope.carGoods}" var="cargood">

                            <%--<table width="100%" border="0" cellspacing="0" cellpadding="0" id="myTableProduct">--%>
                            <c:if test="${cargood.shopId eq shop.shopId}">
                                <tr class="shopping_product_list" id="shoppingProduct_01">
                                    <td class="shopping_product_list_1"><img src="${cargood.img}" height="50"
                                                                             width="50"/></td>
                                    <td class="shopping_product_list_2">${cargood.goodId}</td>
                                    <td class="shopping_product_list_3">${cargood.goodName}</td>
                                    <td class="shopping_product_list_4">${cargood.goodDesc}</td>
                                    <td class="shopping_product_list_5">￥<label>${cargood.price}</label></td>
                                    <td class="shopping_product_list_6">${cargood.count}</td>
                                    <td class="shopping_product_list_7"><a
                                            href="outdelcarGoods.action?goodId=${cargood.goodId}&shopId=${shop.shopId}"
                                            class="blue del">删除</a></td>
                                </tr>
                            </c:if>
                            <%--</table>--%>

                        </c:forEach>

                        <%--<div class="shopping_list_end">--%>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        <td align="right">
                            <div><a id="removeAllProduct" href="outcarGoods.action">清空购物车</a></div>
                            <ul>
                                <div align="right">
                                    合计：￥<label id="product_total">${shop.shopPrice}</label>
                                    <a name="jiesuan" class="btn btn-primary btn-lg"
                                       onclick="firm(${shop.shopPrice},${shop.userId},${shop.shopId})"/>结算</a>
                                </div>
                            </ul>
                        </td>
                        </tr>
                        <%--</div>--%>

                    </c:forEach>
                </table>

                <!-- 结算页面弹出窗口 -->
                <script type="text/javascript">
                    function firm(pri, suid, shopId) {
                        if (confirm("此订单金额为" + pri + "，你确信要购买此订单么？")) {
                            location.href = "insertToOrder.action?from=${sessionScope.user.userId}&to=" + suid + "&money=" + pri + "&shopId=" + shopId;
                        }
                        else {
                            alert("你按了取消，那就是取消结算");
                            location.href = "CarBuy.jsp";
                        }
                    }
                </script>


            </div>
        </div>
    </div>
</div>
</body>
