<%-- 
    Document   : error
    Created on : 2020-10-1, 21:39:45
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Error!</h1>
        <%
            out.print("出错原因是" + exception.getMessage());
        %>
    </body>
</html>
