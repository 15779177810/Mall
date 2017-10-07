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

     <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../jquery-3.2.1.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container" style="background: #ffffff">
<div class="page-header" >
            <h1 class="center-block">商品列表 <small>show in table</small></h1>
        </div>
        <div style="float: right;">
                <p><a class="btn btn-primary btn-sm btn-success" href="<c:url value='/admin/ProductAdd.jsp'/>" role="button">添加</a></p>
          
                </div>
        <div class="col-xs-1">
            <p><a class="btn btn-success btn-default" href="../goods.action" role="button">返回首页</a></p>
        </div>

        <!--table start-->
        <table class="table table-bordered table-hover">
            <tr>
                <th class="active">产品id:</th>
                <th class="success">产品名称:</th>
                <th class="warning">产品种类:</th>
                <th class="danger">产品描述:</th>
                <th class="info">商品价格:</th>
                <th class="active">商家id:</th>
                <th class="success">操作:</th>
            </tr>
            
                  <c:forEach items="${go}" var="emp">
		
    	<tr>  
    		<td class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.goodId}</td>
    		<td class="success">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.goodName}</td>
    		<td class="warning">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.typeId}</td>		
    		<td class="danger">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.goodDesc}</td>
    		<td class="info">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.price}</td>
    		<td class="active">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${emp.shopId}</td>
    		
    		<td class="success">
    
    	<%-- 	<a href="<c:url value='/admin/ProductModify.jsp?goodId=${emp.goodId}&&goodName=${emp.goodName}&&typeId=${emp.typeId}&&goodDesc=${emp.goodDesc}&&price=${emp.price}&&shopId=${emp.shopId}'/>">修改</a>
    	
    		<a href="<c:url value='/admin/goodsdelete.action?goodId=${emp.goodId}&&goo  toModify.action  dName=${emp.goodName}&&typeId=${emp.typeId}&&goodDesc=${emp.goodDesc}&&price=${emp.price}&&shopId=${emp.shopId}'/>">删除</a> --%>
    			<p><a class="btn btn-primary btn-sm btn-success" href="<c:url value='/toModify.action?goodId=${emp.goodId}'/>" role="button">修改</a>
    			<a class="btn btn-primary btn-sm btn-success" href="<c:url value='/admin/goodsdelete.action?goodId=${emp.goodId}&&goodName=${emp.goodName}&&typeId=${emp.typeId}&&goodDesc=${emp.goodDesc}&&price=${emp.price}&&shopId=${emp.shopId}'/>" role="button">删除</a></p>
    			
    		</td>
    		
               
    		
    	</tr>
    </c:forEach>
        </table>
        <h5 class="page-header bg-success"></h5>
    </div>
</body>

</html>