<%-- 
    Document   : searchFood
    Created on : 2020-12-3, 23:01:47
    Author     : 陈老师
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String s = request.getParameter("s");
    if (null == s || s.isEmpty()) {
        response.sendRedirect("listFood.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8", "root", "x5");
            String sql = "select * from takeout_food where fName like ? or fDescription like ?";
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, "%" + s + "%");
            pstat.setString(2, "%" + s + "%");
            ResultSet rs = pstat.executeQuery();%>
        <table border="1">
            <tr><th>ID</th><th>名称</th><th>价格</th><th>介绍</th><th>图片</th></tr>
                    <%
                        while (rs.next()) {
                    %>
            <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
            </tr>
            <%
                }
            %>
        </table>
        <%
            rs.close();
            pstat.close();
            conn.close();
        %>
        <input type="text" id="search" placeholder="请输入搜索关键字"><button onclick="search()">搜索食品</button>
        <script>
            function search() {
                var v = document.getElementById("search").value;
                location.href = "searchFood.jsp?s=" + v;
            }
        </script>
    </body>
</html>
