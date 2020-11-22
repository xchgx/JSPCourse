<%-- 
    Document   : demo1
    Created on : 2020-11-21, 18:56:22
    Author     : 陈老师
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <button onclick="loadFood()">刷新最新食品</button>
        <div id="content"></div>
        <script src="jquery-1.10.2.min.js"></script>
        <script>
            function loadFood(){
                $("#content").load("/JSPCourse/QueryServlet");
            }
        </script>
    </body>
</html>
