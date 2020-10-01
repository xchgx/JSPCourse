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
        <h1>No3</h1>
      <%!
          int a = 10;
          int add(int a){
            this.a++;
            return this.a;
            }
      %>
      <%
          int a = 100;
      %>
      <%=add(20)%>
      <%=a%>



    </body>
</html>
