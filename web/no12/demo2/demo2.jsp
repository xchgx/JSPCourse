<%-- 
    Document   : demo2
    Created on : 2020-11-16, 22:46:07
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
        <div><input type="text" id="name" placeholder="请输入昵称"><button onclick="suiji()">随机</button></div> 
        <script>
            function suiji(){
                var name1= ["疯狂的","可爱的","愤怒的","悠闲地"];
                var name2=["小草","石头","云朵","小鸟"];
                var i1=Math.floor(Math.random()*name1.length);
                var i2=Math.floor(Math.random()*name2.length);
                document.getElementById("name").value = name1[i1]+name2[i2];
            } 
        </script>
    </body>
</html>
