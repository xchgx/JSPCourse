<%-- 
    Document   : Demo1
    Created on : 2020-11-19, 20:28:40
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>数据库操作</title>
    </head>
    <body>
        <h1>数据库操作</h1>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=UTF-8", "root", "x5");
            PreparedStatement pstat = conn.prepareStatement("select * from takeout_order where fUserID=?");
            pstat.setString(1, "user");
            ResultSet rs = pstat.executeQuery();
            while (rs.next()) {
                out.println("<div>");
//                out.println("<span>" + rs.getString(3) + "</span>");
                out.println("<span>" + rs.getFloat(4) + "</span>");
                out.println("<span>" + rs.getString(5) + "</span>");
                out.println("<span>" + rs.getString(6) + "</span>");
                out.println("<span>" + rs.getString(8) + "</span>");
                out.println("</div>");
            }
            pstat.close();
            rs.close();
            conn.close();
        %>
    </body>
</html>
