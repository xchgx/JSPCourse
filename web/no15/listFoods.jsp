<%-- 
    Document   : listFoods
    Created on : 2020-11-25, 23:31:20
    Author     : 陈老师
--%>

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
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8","root","x5");
            Statement stat = conn.createStatement();
            stat.executeUpdate("insert into takeout_food() values('016','蛋炒饭',18,'蛋炒饭','16.jpg') ");
            stat.close();
            conn.close();
        %>
    </body>
</html>
