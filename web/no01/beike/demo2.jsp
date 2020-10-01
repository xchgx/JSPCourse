<%-- 
    Document   : demo1
    Created on : 2020-10-1, 21:12:48
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>No2</h1>
        <%!
            int a = 10;

            int add(int a) {
                a++;
                return a;
            }
        %>
        <%
            int a = 100;
        %>
        <%=add(20)%>
        <%=this.a%>


    </body>
</html>
