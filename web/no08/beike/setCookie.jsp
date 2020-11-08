<%-- 
    Document   : setCookie
    Created on : 2020-11-8, 21:12:26
    Author     : Administrator
--%>

<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>addCookie!</h1>
        <%   
            Cookie cookie = new Cookie("cgx", URLEncoder.encode("中文试试", "UTF-8"));
            cookie.setMaxAge(10);
            response.addCookie(cookie);
        %>
    </body>
</html>
