<%-- 
    Document   : forward
    Created on : 2020-11-12, 20:35:35
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Demo04 Forward</title>
    </head>
    <body>
        <h1>口令进入!</h1>
        <form action="demo04DoForward.jsp" method="post">
            <input type="password" name="key" placeholder="请输入口令">
            <input type="submit" value="口令进入">
        </form>
    </body>
</html>
