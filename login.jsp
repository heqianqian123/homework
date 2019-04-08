<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>用户登录</title>
</head>
<body>
<form name="fm" method="post" action="">
用户名： <input	name="name" type="text" id="name" style="width: 120px"><br>
密&nbsp;&nbsp;码： <input name="pwd" type="password" id="pwd" style="width: 120px"> <br>
<br>

<input type="button" value="注册" type="submit" onclick="document.fm.action='dealuser.jsp';document.fm.submit();"/>
<input type="button" value="登录" type="submit" onclick="document.fm.action='dealuser2.jsp';document.fm.submit();"/>


</form>



</body>
</html>
