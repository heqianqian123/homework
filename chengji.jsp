<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>

<%@page import= "hqq.* "%>

<%
	request.setCharacterEncoding("utf-8"); 

	String daan=URLEncoder.encode(request.getParameter("sure"),"utf-8");
	String[] danci = daan.split("%2C");
	String one=URLEncoder.encode(request.getParameter("one"),"utf-8");
	String two=URLEncoder.encode(request.getParameter("two"),"utf-8");
	String three=URLEncoder.encode(request.getParameter("three"),"utf-8");
	String four=URLEncoder.encode(request.getParameter("four"),"utf-8");
	String five=URLEncoder.encode(request.getParameter("five"),"utf-8");
	
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>结果</title>
</head>
<body>

<%
	int s=0;
	String SQL="";
	for (int i=0;i<5;i++)
	{
		SQL="update dbo.贺倩倩_词库 set chuxian=chuxian+1 where danci='"+danci[i]+"'";
		db.testUpdate(SQL);
	}
	if (danci[0].equals(one))
	{
		s=s+20;
	}
	else
	{
		SQL="update dbo.贺倩倩_词库 set cuowu=cuowu+1 where danci='"+danci[0]+"'";
		db.testUpdate(SQL);
	}
	
	if (danci[1].equals(two))
	{
		s=s+20;
	}
	else
	{
		SQL="update dbo.贺倩倩_词库 set cuowu=cuowu+1 where danci='"+danci[1]+"'";
		db.testUpdate(SQL);
	}
	
	if (danci[2].equals(three))
	{
		s=s+20;
	}
	else
	{
		SQL="update dbo.贺倩倩_词库 set cuowu=cuowu+1 where danci='"+danci[2]+"'";
		db.testUpdate(SQL);
	}
	
	if (danci[3].equals(four))
	{
		s=s+20;
	}
	else
	{
		SQL="update dbo.贺倩倩_词库 set cuowu=cuowu+1 where danci='"+danci[3]+"'";
		db.testUpdate(SQL);
	}
	
	if (danci[4].equals(five))
	{
		s=s+20;
	}
	else
	{
		SQL="update dbo.贺倩倩_词库 set cuowu=cuowu+1 where danci='"+danci[4]+"'";
		db.testUpdate(SQL);
	}
%>

	总分：<%=s %>
	<a href="exam.jsp"><h1>再做一遍</h1></a>
	<a href="menu.jsp"><h1>返回</h1></a>

</body>
</html>
