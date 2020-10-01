<%-- 
    Document   : iserror
    Created on : 2020-10-1, 21:39:02
    Author     : Administrator
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
	int i = 0;//为了能正常验证，可先设i的值为2，后再改为0
	int j = 10 / i;
	out.print("j = " + j);
%>
    </body>
</html>
