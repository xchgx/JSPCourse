<%-- 
    Document   : header
    Created on : 2020-10-30, 22:46:10
    Author     : Administrator
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
response.setHeader("Refresh", "1");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日HH时mm分ss秒");
        String dt = sdf.format(new Date()); 
        %>
        <h1>Hello World!</h1>
        <h2><%=dt%></h2> 
        
    </body>
</html>
