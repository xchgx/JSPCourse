<%-- 
    Document   : Demo01Register
    Created on : 2020-11-12, 10:38:57
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
        <form action="Demo02DoRegister.jsp" method="post">
            <input type="text" name="name" placeholder="请输入姓名">
            <input type="text" name="age" placeholder="请输入年龄">
            <input type="text" name="profession" placeholder="专业">
            <input type="submit" value="注册">
        </form>
    </body>
</html>
