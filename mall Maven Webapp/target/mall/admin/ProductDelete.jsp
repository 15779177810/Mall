<%@ page language="java" import="com.shopping.*" pageEncoding="UTF-8"%>


<meta http-equiv="refresh" content="3;URL=goodsdelete.action">
<%-- <%
int id = Integer.parseInt(request.getParameter("id"));

ProductMgr.getInstance().delete(id);
%> --%>

<html>
	<head>
	
		<title>删除产品</title>
	</head>
	<center>
		删除成功！
	</center>
	<body>
	
	<input type="hidden" name="goodId" value="${param.goodId}">
		<script type="text/javascript">	
			parent.main.location.reload();
		</script>
	</body>
</html>