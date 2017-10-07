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

    <div class="jumbotron">
        <div class="row">
            <div class="col-xs-1">
              <p><a class="btn btn-success btn-default" href="#" role="button">返回首页</a></p>
            </div>
            <div class="col-xs-1">
                <p><a class="btn btn-primary btn-default" href="#" role="button">我的订单</a></p>
              </div>
          </div>
      <h1 class="1text-center" style="color:black">${goods.name}详情页</h1>
      <p>This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
    </div>


    <div class="row">
      <div class="col-sm-6 col-md-6 center-block">
        <div class="thumbnail">
          <img src="qwer.jpg" alt="...">
          <div class="caption">
            <!-- <h3>Thumbnail label</h3>
            <p>...</p> -->
            <!-- <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p> -->
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-md-6 center-block">
        <div class="thumbnail">
          <div class="caption">

              <div class="alert alert-success" role="alert">
                <h3 class="text-center">
                  ${goods.name}
                </h3>
              </div>
              <div class="alert alert-info" role="alert">
                  <h6 class="text-center">
                      ${goods.desc}
                  </h6>
              </div>

              <form class="form-inline">
                  <div class="form-group">
                    <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
                    <div class="input-group">
                      <div class="input-group-addon">价格：${goods.price}</div>
                      <input type="text" class="form-control" id="exampleInputAmount" placeholder="请输入购买的数量">
                      <div class="input-group-addon">个</div>
                    </div>
                  </div>
              </form>
        
              <h5 class="page-text bg-default">
                <h1></h1>
              </h5>
              <h5 class="page-text bg-default">
                  <h1></h1>
                </h5>
            <p class="text-center">
              <a href="#" class="btn btn-primary" role="button">点击购买</a> 
              <a href="#" class="btn btn-success" role="button">加入购物车</a>
            </p>
          </div>
        </div>
      </div>

    </div>

    <div class="page-header">
        <h1 class="1text-center" style="color:blue">相关评论 <small style="color:aqua">show in table</small></h1>
    </div>

    <!--comment start-->
    <div class="media">
      <div class="media-left media-middle">
        <a href="#">
            <img class="media-object" src="show.png" alt="..." width="45" height="45">
          </a>
      </div>
      <div class="media-body">
        <h4 class="media-heading">Middle aligned media</h4>
        This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
        This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
      </div>
    </div>

    <h5 class="page-header bg-info"></h5>

    <div class="media">
        <div class="media-left media-middle">
          <a href="#">
              <img class="media-object" src="show.png" alt="..." width="45" height="45">
            </a>
        </div>
        <div class="media-body">
          <h4 class="media-heading">Middle aligned media</h4>
          This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
          This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
        </div>
      </div>
  
      <h5 class="page-header bg-info"></h5>

      <div class="media">
          <div class="media-left media-middle">
            <a href="#">
                <img class="media-object" src="show.png" alt="..." width="45" height="45">
              </a>
          </div>
          <div class="media-body">
            <h4 class="media-heading">Middle aligned media</h4>
            This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
            This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
          </div>
        </div>
    
        <h5 class="page-header bg-info"></h5>

        <div class="media">
            <div class="media-left media-middle">
              <a href="#">
                  <img class="media-object" src="show.png" alt="..." width="45" height="45">
                </a>
            </div>
            <div class="media-body">
              <h4 class="media-heading">Middle aligned media</h4>
              This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
              This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
            </div>
          </div>
      
          <h5 class="page-header bg-info"></h5>

          <div class="media">
              <div class="media-left media-middle">
                <a href="#">
                    <img class="media-object" src="show.png" alt="..." width="45" height="45">
                  </a>
              </div>
              <div class="media-body">
                <h4 class="media-heading">Middle aligned media</h4>
                This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
                This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
              </div>
            </div>
        
            <h5 class="page-header bg-info"></h5>

            <div class="media">
                <div class="media-left media-middle">
                  <a href="#">
                      <img class="media-object" src="show.png" alt="..." width="45" height="45">
                    </a>
                </div>
                <div class="media-body">
                  <h4 class="media-heading">Middle aligned media</h4>
                  This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
                  This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.
                </div>
              </div>
          
              <h5 class="page-header bg-info"></h5>


  </div>
</body>

</html>