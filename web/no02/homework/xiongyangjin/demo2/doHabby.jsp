<%-- 
    Document   : doHabby
    Created on : 2020-10-9, 10:54:09
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
        <h1>Hello World!<br>
            你的爱好个数<%=ahs.length%><br>
            
        </h1>
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
