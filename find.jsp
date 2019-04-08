<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>查找</title>
</head>
<body>
<form name="fm" method="post" action="">

输入单词： <input	name="danci" type="text" id="name" style="width: 120px"><br>
<input type="button" value="查找" type="submit" onclick="document.fm.action='dealdanci.jsp';document.fm.submit();"/>
<input type="button" value="返回" type="submit" onclick="document.fm.action='menu.jsp';document.fm.submit();"/>

</form>
</body>
</html> 
