<%-- 
    Document   : deleteFood
    Created on : 2020-11-27, 0:10:22
    Author     : 陈老师
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    if (id != null) {
        Class.forName("org.gjt.mm.mysql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8", "root", "x5");
        Statement stat = conn.createStatement();
        int successrow = stat.executeUpdate("delete from takeout_food where fid='" + id + "'");
        System.out.println(successrow);
        stat.close();
        conn.close();
    }
    response.sendRedirect("listFood.jsp");
%>
