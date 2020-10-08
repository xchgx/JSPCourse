<%-- 
    Document   : doLogin
    Created on : 2020-10-8, 10:53:56
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
String[] arr = request.getParameterValues("xx");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%=arr.length %>
        你选择的是：
        <table border="1">
            <tr>
        <%
            for (int idx = 0; idx < arr.length; idx++) {
                    String elem = arr[idx]; 
                    %>
                    <td><%=elem%></td>
                    <%
                                   
                }
        %>
            </tr>
        </table>
    </body>
</html>
