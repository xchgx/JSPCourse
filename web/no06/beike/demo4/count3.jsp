<%-- 
    Document   : count
    Created on : 2020-10-30, 22:55:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>会话计数</title>
    </head>
    <body>
        <h1>会话计数</h1>
        <%
        if(application.getAttribute("count") == null){
            application.setAttribute("count",0);
        }
        int count = (int)application.getAttribute("count");
        application.setAttribute("count", ++count);
        %>
        当前会话数：<%=count%>
    </body>
</html>
