<%-- 
    Document   : demo2
    Created on : 2020-10-9, 10:41:07
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
        <h1>Happy!!!</h1>
        <form action="doHabby.jsp" method="post">
            <input type="checkbox" name="ah" value="足球">足球<br>
            <input type="checkbox" name="ah" value="篮球">篮球<br>
            <input type="checkbox" name="ah" value="王者">王者<br>
            <input type="checkbox" name="ah" value="其它">其它<br>
            <input type="checkbox" name="jn" value="Java编程">Java编程<br>
            <input type="checkbox" name="jn" value="网页编程">网页编程<br>
            <input type="submit" value="保存信息"><!--提交表单按钮-->
        </form>
    </body>
</html>