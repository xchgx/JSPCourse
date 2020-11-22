<%-- 
    Document   : demo4
    Created on : 2020-11-22, 21:47:24
    Author     : 陈老师
--%>

<%@page import="bean.no14.demo1.Food"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <ol>
        <%
            List<Food> list = (List)session.getAttribute("foods");
            for (int i = 0; i < list.size(); i++) {
                out.println("<li>");
                out.println(list.get(i).getName());
                out.println(list.get(i).getPrice());
                out.println(list.get(i).getDescription());
                out.println("</li>");
            }
        %>
        </ol>
    </body>
</html>
