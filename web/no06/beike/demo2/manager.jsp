<%-- 
    Document   : pmanager
    Created on : 2020-10-30, 22:37:39
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String loginUsername = (String)session.getAttribute("username");
    if(loginUsername == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理后台</title>
    </head>
    <body>
        <h1>管理后台</h1>
    </body>
</html>
