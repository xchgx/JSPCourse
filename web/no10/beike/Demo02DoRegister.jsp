<%-- 
    Document   : Demo02DoRegister
    Created on : 2020-11-12, 10:42:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="user" class="cg.User" scope="page"></jsp:useBean>
<jsp:setProperty name="user" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>您的注册信息</h1>
        <table border="1">
            <tr><td>姓名:</td><td><jsp:getProperty name="user" property="name"></jsp:getProperty></td></tr>
            <tr><td>年龄</td><td><jsp:getProperty name="user" property="age"></jsp:getProperty></td></tr>
            <tr><td>专业</td><td><jsp:getProperty name="user" property="profession"></jsp:getProperty></td></tr>
        </table>
    </body>
</html>
