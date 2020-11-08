<%-- 
    Document   : cookie
    Created on : 2020-11-8, 20:58:01
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
        <h1>Hello World!</h1>
        <h2><%=request.getCookies()%></h2>
        <h2><% Cookie[] cookies1 = request.getCookies();%>
            Cookie数组的长度: <%=cookies1.length%>
        </h2>
        <%
            Cookie[] cookies = request.getCookies();
            for (int i = 0; i < cookies.length; i++) {
                Cookie c = cookies[i];
                out.println("<h3>" + c + "</h3>");
                out.println("<h3>getName " + c.getName() + "</h3>");
                out.println("<h3>getValue " + c.getValue() + "</h3>");
            }
        %> 


    </body>
</html>
