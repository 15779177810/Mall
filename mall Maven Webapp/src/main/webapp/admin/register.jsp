<!DOCTYPE html>
<html lang="cn">

<head>
    <title></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
</head>

<body>
    <div class="container" style="background: #ffffff">
        <!--header start-->
        <div class="jumbotron">
            <!--update to row-->
            <div class="row">
                <div class="col-xs-2">
                    <p><a class="btn btn-primary btn-lg" href="#" role="button">前去登陆</a></p>
                </div>
            </div>

            <h1 class="text-center">欢迎注册</h1>
            <p class="text-center">开启您购物的奇妙之旅</p>
            <h5 class="page-header bg-default"></h5>

            <!--register start-->
            <form class="form-horizontal">

                <div class="form-group ">
                    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10 ">
                        <input type="email" class="form-control" id="inputEmail3" placeholder="请输入用户名">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入姓名">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入密码">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="inputPassword3" placeholder="请输入电话">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">送货地址</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" rows="3" placeholder="请输入送货地址"></textarea>
                    </div>
                </div>

                <div class="form-group center-block">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success">提交</button>
                    </div>
                </div>
            </form>
        </div>

    </div>
</body>

</html>