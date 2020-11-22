<%-- 
    Document   : demo2
    Created on : 2020-11-21, 20:38:55
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
        <h1>点餐</h1>
        <form action="/JSPCourse/FoodServlet" method="post">
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicdoe=true&characterEncoding=utf8","root","x5");
            Statement stat = conn.createStatement();
            String sql = "select * from takeout_user";
            ResultSet rs = stat.executeQuery(sql);
            out.println("<div><select name='user'>");
            while(rs.next()){
                out.println("<option value='"+rs.getString(1)+"'>"+rs.getString(2)+"</option>");
            }
            out.println("</select></div>");
            
            //显示所有餐饮
            sql = "select * from takeout_food";
            rs = stat.executeQuery(sql);
            while(rs.next()){
                out.println("<div><input type='radio' name='food' value='"+rs.getString(1)+"'>"+rs.getString(2)+"<b>"+rs.getString(3)+"元</b></div>");
            }
            rs.close();
            stat.close();
            conn.close();
        %>
        <input type="submit" value="订餐">
        </form>
    </body>
</html>
