<%-- 
    Document   : demo2
    Created on : 2020-10-9, 10:39:36
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
        <form action="doHabby.jsp" method="post" ><!--爱好-->
            <input type="checkbox" name="hb" value="足球">足球<br>
            <input type="checkbox" name="hb" value="排球">排球<br>
            <input type="checkbox" name="hb" value="王者">王者<br>
            <input type="checkbox" name="hb" value="其他">其他<br>
            <input type="checkbox" name="jn" value="网页编程">网页编程<br><!--不同的类型同样的name值-->
            <input type="checkbox" name="jn" value="Java编程">Java编程<br>
            <input type="submit" value="保存信息"><!--提交信息-->
        </form>
    </body>
</html>
