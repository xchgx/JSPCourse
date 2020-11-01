<%-- 
    Document   : countback5
    Created on : 2020-10-30, 22:49:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setHeader("refresh", "5; url='header.jsp'");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>5秒后将回到时间页面</h1>
    </body>
</html>
