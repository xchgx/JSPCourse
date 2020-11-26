<%-- 
    Document   : saveFood
    Created on : 2020-11-26, 23:14:54
    Author     : 陈老师
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("fid");
    String name = request.getParameter("name");
    String price = request.getParameter("price");
    String description = request.getParameter("description");
    String image = request.getParameter("image");
    System.out.println("id="+id);
    System.out.println("name="+name);
    System.out.println("price="+price);
    System.out.println("description="+description);
    System.out.println("image="+image);
    Class.forName("org.gjt.mm.mysql.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8", "root", "x5");
    Statement stat = conn.createStatement();
    int successrow = stat.executeUpdate("update takeout_food set fName='"+name+"', fPrice="+price+", fDescription='"+description+"', fImage='"+image+"' where fID='"+id+"'");
    System.out.println(successrow);
    stat.close();
    conn.close();
    response.sendRedirect("listFood.jsp");
%>

