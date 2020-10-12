<%-- 
    Document   : query
    Created on : 2020-10-9, 9:59:19
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!<%=xh%> <%=xm%></h1><br>
    </body>
</html>
