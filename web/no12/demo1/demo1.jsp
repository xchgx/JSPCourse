<%-- 
    Document   : demo1
    Created on : 2020-11-16, 22:33:58
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #block{
                width: 100px;height:100px;background:red;position:relative;left:0px;top:0px;
            }
        </style>
    </head>
    <body>
        <div>
            <button onclick="up()">上</button>
            <button onclick="down()">下</button>
            <button onclick="left()">左</button>
            <button onclick="right()">右</button>
        </div>
        <div id="block"></div>
        <script>
            var x = 0;
            var y = 0;
            var block = document.getElementById("block");
             function up(){
                 y-=50;
                 block.setAttribute("style","left:"+x+"px;top:"+y+"px;");
             }
             function down(){
                 y+=50;
                 block.setAttribute("style","left:"+x+"px;top:"+y+"px;");
             }
             function left(){
                 x-=50;
                 block.setAttribute("style","left:"+x+"px;top:"+y+"px;");
             }
             function right(){
                 x+=50;
                 block.setAttribute("style","left:"+x+"px;top:"+y+"px;");
             }
        </script>
    </body>
</html>
