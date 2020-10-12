<%-- 
    Document   : doHabby
    Created on : 2020-10-9, 10:54:25
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
String[] ahs=request.getParameterValues("ah");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        你的爱好个数有：<%=ahs.length%>个
        <%
        for(int i=0;i<ahs.length;i++){
        String ah=ahs[i];
        %>
        <p><%=ah%></p>
        <%
            }
        %>
    </body>
</html>
