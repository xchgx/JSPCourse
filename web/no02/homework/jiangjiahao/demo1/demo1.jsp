<%-- 
    Document   : demo1
    Created on : 2020-10-9, 9:49:15
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>成绩查询</title>
	</head>
	<body>
		<form action="query.jsp" method="get">
			学号：<input type="text" name="xh"><br>
			姓名：<input type="text" name="xm"/><br>
			<input type="submit" value="查询成绩"/>
		</form>
	</body>
</html>

