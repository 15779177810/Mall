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
    
<div class="page-header" >
            <h1 class="center-block">添加商品 <small>show in table</small></h1>
        </div>
       

        <!--table start-->
       
<!-- <div style="padding: 100px 100px 10px;"> -->
<form class="form-horizontal" method="post" name="formAdd" action="<c:url value='goodsadd.action'/>">
  <input type="hidden" name="goodId" value="${param.goodId}"/>
  <div class="form-group" style="width:55%">
    <label for="inputEmail3" class="col-sm-2 control-label">产品名称</label>
    <div class="col-sm-10">
      <input type="text" name="goodName" class="form-control" id="inputEmail3" placeholder="goodsname" >
    </div>
  </div>
   <div class="form-group" style="width:55%">
    <label for="inputEmail3" class="col-sm-2 control-label">店铺id:</label>
    <div class="col-sm-10">
      <input type="text" name="shopId" class="form-control" id="inputEmail3" placeholder="shopId" >
    	<%-- <input name="price" size="25" type="text" value="${param.price}"> --%>
    </div>
  </div>
   <div class="form-group" style="width:55%">
    <label for="inputEmail3" class="col-sm-2 control-label">商品价格:</label>
    <div class="col-sm-10">
      <input type="text" name="price" class="form-control" id="inputEmail3" placeholder="price" >
    </div>
  </div>
   <div class="form-group" style="width:55%">
    <label for="inputEmail3" class="col-sm-2 control-label">类型:</label>
    <div class="col-sm-10">
      <input type="text" name="typeId" class="form-control" id="inputEmail3" placeholder="type" >
    </div>
  </div>
  <div class="form-group" style="width:55%">
    <label for="inputPassword3" class="col-sm-2 control-label">产品描述:</label>
    <div class="col-sm-10">
    <textarea name="goodDesc" cols="60" rows="5" id="goodDesc">
		
	</textarea>
      <!-- <input type="text" class="form-control" id="inputPassword3" placeholder="desc"> -->
    </div>
  </div>
  <!-- <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div> -->
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加</button>
    </div>
  </div>
</form>
    </body>

</html>