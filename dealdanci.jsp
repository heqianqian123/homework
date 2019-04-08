<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>

<%@page import= "hqq.* "%>

<%
	request.setCharacterEncoding("utf-8");

	String danci=URLEncoder.encode(request.getParameter("danci"),"utf-8");
	
	String SQL = "SELECT danci,shiyi,cuowu,chuxian FROM dbo.贺倩倩_词库";
	String text=db.testQuery3(SQL,danci); 
	
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>结果</title>
</head>
<body>

解释：<%=text %> <br>

<a href="find.jsp"><h2>返回</h2></a>

</body>
</html>
