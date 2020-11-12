<%-- 
    Document   : fail
    Created on : 2020-11-12, 20:39:49
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% response.setHeader("Refresh", "5; url='demo04forward.jsp'");     %>
        <h1>口令失败!5秒后回到口令页</h1>
    </body>
</html>
