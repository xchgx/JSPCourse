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
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=UTF-8", "root", "x5");
            Statement stat = conn.createStatement();
            String sql = "select * from takeout_food";
            ResultSet rs = stat.executeQuery(sql);
            out.println("<table border=1>");
            out.println("<tr><th>ID</th><th>餐饮名</th><th>价格</th><th>详细介绍</th></tr>");
            while(rs.next()){
                out.print("<tr>");
                out.println("<td>"+rs.getInt(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getFloat(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.print("</tr>");
            }
            out.println("</table><br>");
            
            sql = "select * from takeout_user";
            rs = stat.executeQuery(sql);
             out.println("<table border=1>");
            out.println("<tr><th>用户名</th><th>姓名</th><th>电话号码</th><th>地址</th></tr>");
            while(rs.next()){
                out.print("<tr>");
                out.println("<td>"+rs.getString(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.print("</tr>");
            }
            out.println("</table><br>");
            
            sql = "select * from takeout_order";
            rs = stat.executeQuery(sql);
             out.println("<table border=1>");
            out.println("<tr><th>创建日期</th><th>订单内容</th><th>价格</th><th>订餐用户</th><th>客户称呼</th><th>客户电话</th><th>客户地址</th></tr>");
            while(rs.next()){
                out.print("<tr>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.println("<td>"+rs.getString(5)+"</td>");
                out.println("<td>"+rs.getString(6)+"</td>");
                out.println("<td>"+rs.getString(7)+"</td>");
                out.println("<td>"+rs.getString(8)+"</td>");
                out.print("</tr>");
            }
            out.println("</table><br>");
            
            rs.close();
            stat.close();
            conn.close();
            
        %>
    </body>
</html>
