<%-- 
    Document   : list
    Created on : 2020-11-16, 23:29:14
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
        <table border="1" style="border-collapse: collapse;">
            <tr><th>姓名</th><th>性别</th></tr>
        <%
            String stus[]  = {"张三","李四","王五"};
            String sexs[]  = {"男","男","女"};
            for (int i = 0; i < stus.length; i++) {%>
            <tr><td><%=stus[i]%></td><td><%=sexs[i]%></td></tr>
           <%}%>
        </table>
    </body>
</html>
