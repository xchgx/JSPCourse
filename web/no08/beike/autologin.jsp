<%-- 
    Document   : autologin
    Created on : 2020-11-8, 21:33:38
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cookie[] cookies = request.getCookies();
    String name = "";
    String pass = "";
    for (int i = 0; i < cookies.length; i++) {
        if ("name".equals(cookies[i].getName())) {
            name = cookies[i].getValue();
            session.setAttribute("username", name);
            response.sendRedirect("manager.jsp");
        } 
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="doLogin.jsp" method="post">
            <input type="text" name="name" placeholder="请输入用户名">
            <input type="pass" name="pass" placeholder="请输入密码">
            <input type="submit" value="登录">
        </form>
    </body>
</html>
