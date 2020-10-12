<%-- 
    Document   : first
    Created on : 2020-10-12, 22:54:06
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>虽然我是一个网页，但是你看不到我。</h1>
        <%request.getRequestDispatcher("second.jsp").forward(request, response); %>
    </body>
</html>
