<%-- 
    Document   : doLogin
    Created on : 2020-11-8, 21:35:09
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    if("admin".equals(name) && "123".equals(pass)){
        Cookie c1 = new Cookie("name",name);
        c1.setMaxAge(1000);
        Cookie c2 = new Cookie("pass",pass);
        c2.setMaxAge(1000);
        response.addCookie(c1);
        response.addCookie(c2);
        session.setAttribute("username", name);
        response.sendRedirect("manager.jsp");
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
        
    </body>
</html>
