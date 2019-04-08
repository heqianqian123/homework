<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@page import= "hqq.* "%>
<%@ page import="java.util.*" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String SQL = "SELECT TOP 5 * FROM dbo.贺倩倩_词库 ORDER BY NEWID()";
	Danci danci[]=db.testQuery4(SQL); 
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>测试</title>
</head>
<body>

<form name="fm1" method="post" action="chengji.jsp">​
<%
 int one1=(int)(Math.random()*5);
 int one2=(int)(Math.random()*5);
%>

1.<%=danci[0].getdanci() %> <br />
  A.<%=danci[one1].getshiyi() %> <br />
  B.<%=danci[one2].getshiyi() %> <br />
  C.都不正确  <br />
  
  <input type="radio" name="one" value=<%=danci[one1].getdanci() %> /> A <br />
  <input type="radio" name="one" value=<%=danci[one2].getdanci() %> /> B <br />
  <input type="radio" name="one" value=<%=danci[0].getdanci() %> /> C <br />


<%
int two1=(int)(Math.random()*5);
int two2=(int)(Math.random()*5);
%>


2.<%=danci[1].getdanci() %> <br />
  A.<%=danci[two1].getshiyi() %> <br />
  B.<%=danci[two2].getshiyi() %> <br />
  C.都不正确  <br />
  <input type="radio" name="two" value=<%=danci[two1].getdanci() %> /> A <br />
  <input type="radio" name="two" value=<%=danci[two2].getdanci() %> /> B <br />
  <input type="radio" name="two" value=<%=danci[1].getdanci() %> /> C <br />



<%
int three1=(int)(Math.random()*5);
int three2=(int)(Math.random()*5);
%>

3.<%=danci[2].getdanci() %> <br />
  A.<%=danci[three1].getshiyi() %> <br />
  B.<%=danci[three2].getshiyi() %> <br />
  C.都不正确  <br />
  <input type="radio" name="three" value=<%=danci[three1].getdanci() %> /> A <br />
  <input type="radio" name="three" value=<%=danci[three2].getdanci() %> /> B <br />
  <input type="radio" name="three" value=<%=danci[2].getdanci() %> /> C <br />



<%
 int four1=(int)(Math.random()*5);
 int four2=(int)(Math.random()*5);
%>

4.<%=danci[3].getdanci() %> <br />
  A.<%=danci[four1].getshiyi() %> <br />
  B.<%=danci[four2].getshiyi() %> <br />
  C.都不正确  <br />
  <input type="radio" name="four" value=<%=danci[four1].getdanci() %> /> A <br />
  <input type="radio" name="four" value=<%=danci[four2].getdanci() %> /> B <br />
  <input type="radio" name="four" value=<%=danci[3].getdanci() %> /> C <br />



<%
 int five1=(int)(Math.random()*5);
 int five2=(int)(Math.random()*5);
%>

5.<%=danci[4].getdanci() %> <br />
  A.<%=danci[(int)(Math.random()*5)].getshiyi() %> <br />
  B.<%=danci[(int)(Math.random()*5)].getshiyi() %> <br />
  C.都不正确  <br />
  <input type="radio" name="five" value=<%=danci[five1].getdanci() %> /> A <br />
  <input type="radio" name="five" value=<%=danci[five2].getdanci() %> /> B <br />
  <input type="radio" name="five" value=<%=danci[4].getdanci() %> /> C <br />
  
  <br />
  <input type="radio" name="sure" value=
  				<%=danci[0].getdanci()+","
  					+danci[1].getdanci()+","
  					+danci[2].getdanci()+","
  					+danci[3].getdanci()+","
  					+danci[4].getdanci()%> /> 确认提交 <br />
  
  <br />
  <input type="reset" value="Reset">
  <input type="submit" value="提交">

</form>

</body>
</html> 
