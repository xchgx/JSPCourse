<%-- 
    Document   : tiku
    Created on : 2020-11-12, 20:47:09
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String s1 = request.getParameter("No01");
            String s2 = request.getParameter("No02");
            if (s1 == null) {
                s1 = "";
            }
            if (s2 == null) {
                s2 = "";
            }
            int score = 0;
            if (s1.equals("b")) {
                score++;
            }
            if (s2.equals("a")) {
                score++;
            }
        %>
    <center><p>你得了<%= score%>分</p></center>
</body>
</body>
</html>
