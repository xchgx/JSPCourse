<%-- 
    Document   : demo2
    Created on : 2020-10-9, 10:39:34
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
        <form action="doHabby.jsp" method="post">
            <input type="checKbox"name="ah"value=足球>足球<br>
            <input type="checKbox"name="ah"value=篮球>篮球<br>
            <input type="checKbox"name="ah"value=王者>王者<br>
            <input type="checKbox"name="ah"value=其他>其他<br>
            <input type="checKbox"name="jk"value=Jave编程>Java编程<br>
            <input type="checKbox"name="jk"value=网页编辑>网页编程<br>
            <input type="submit" value="保存信息">
        </form>
    </body>
</html>
