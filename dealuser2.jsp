<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ page import="java.net.URLEncoder" %>
<%@page import= "hqq.* "%>

<%
	request.setCharacterEncoding("utf-8");

	String user=URLEncoder.encode(request.getParameter("name"),"utf-8");
	String code=URLEncoder.encode(request.getParameter("pwd"),"utf-8");//获取用户名
	
	String SQL = "SELECT userid, code FROM dbo.贺倩倩_用户名 ";
	int n=db.testQuery2(SQL,user,code); 
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录检测</title>
</head>
<body>


<%
	
	if (n==1)
	{
%>
		登录成功 <br>
		<a href="menu.jsp"><h2>进入系统</h2></a>
<%
	}
	else
	{
%>
		用户名或密码错误
		<a href="login.jsp"><h2>返回界面</h2></a>
<%
	}
%>	
	
</body>
</html>
