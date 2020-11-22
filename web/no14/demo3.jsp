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
            <%
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicdoe=true&characterEncoding=utf8", "root", "x5");
                Statement stat = conn.createStatement();
                String sql = "select * from takeout_order";
                ResultSet rs = stat.executeQuery(sql);
                out.println("<ol><table border=1>");
                while (rs.next()) {
                    out.println("<tr>"); 
                    out.println("<td><li>"+rs.getString(1)+"</li></td>");
                    out.println("<td>"+rs.getString(2)+"</td>");
                    out.println("<td>"+rs.getString(3)+"</td>");
                    out.println("<td>"+rs.getString(4)+"</td>");
                    out.println("<td>"+rs.getString(5)+"</td>");
                    out.println("<td>"+rs.getString(6)+"</td>");
                    out.println("<td>"+rs.getString(7)+"</td>");
                    out.println("<td>"+rs.getString(8)+"</td>");
                    out.println("<td>"+rs.getString(9)+"</td>");
                    out.println("</tr>");
                }
                out.println("</table></ol>");
                rs.close();
                stat.close();
                conn.close();
            %>
        </form>
    </body>
</html>
