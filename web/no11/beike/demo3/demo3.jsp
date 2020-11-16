<%-- 
    Document   : demo3
    Created on : 2020-11-15, 23:08:20
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>书城!</h1>
        <form action="book.jsp" method="post">
            <div>书号：<input type="text" name="isbn"></div>
            <div>作者：<input type="text" name="author"></div>
            <div>单价：<input type="text" name="price"></div>
            <div><input type="submit" value="选定"></div>
        </form>
    </body>
</html>
