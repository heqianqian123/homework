<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>

<%@page import= "hqq.* "%>

<%
	request.setCharacterEncoding("utf-8");

	String user=URLEncoder.encode(request.getParameter("name"),"utf-8");
	String code=URLEncoder.encode(request.getParameter("pwd"),"utf-8");//获取用户名
	
	String SQL = "  insert into dbo.贺倩倩_用户名( userid ,code)values('"+user+"','"+code+"') ";
	int n=db.testInsert(SQL); 	
	
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加用户</title>
</head>
<body>

注册成功<br>
<a href="login.jsp"><h2>返回</h2></a>

</body>
</html>
