<%-- 
    Document   : editFood
    Created on : 2020-11-26, 22:51:41
    Author     : 陈老师
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% if (id == null) { %>
        <h1>无此食品</h1>
        <% } else { %>
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8", "root", "x5");
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("select * from takeout_food where fID='" + id + "'");
            rs.next();
        %>
        <form action="saveFood.jsp" method="post">
            <table border="1">
                <tr><td>食品ID</td>   <td><input type="text" value="<%=rs.getString(1)%>" disabled="true"></td></tr>
                <tr hidden="true"><td>食品ID</td>   <td><input type="text" name="fid"   value="<%=rs.getString(1)%>" hidden="true"></td></tr>
                <tr><td>食品名称</td> <td><input type="text" name="name" value="<%=rs.getString(2)%>"></td></tr>
                <tr><td>食品价格</td> <td><input type="text" name="price" value="<%=rs.getString(3)%>"></td></tr>
                <tr><td>食品详情</td> <td><input type="text" name="description" value="<%=rs.getString(4)%>"></td></tr>
                <tr><td>食品图片</td> <td><input type="text" name="image" value="<%=rs.getString(5)%>"></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="更新保存"></td></tr>
            </table>
        </form>
        <%
            rs.close();
            stat.close();
            conn.close();
        %>
        <% }%>
    </body>
</html>
