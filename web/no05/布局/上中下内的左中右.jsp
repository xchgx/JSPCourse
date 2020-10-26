<%-- 
    Document   : 上中下内的左中右
    Created on : 2020-10-26, 22:08:22
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>上中下内的左中右结构</title>
        <style>
            #main{width:1000px;}
            .up{
                width:1000px;
                height:100px;
                background:rgba(100,0,0,0.2);
            }
            .center{
                width:1000px;
                height:300px;
                background:rgba(100,100,0,0.2);
            }
            .down{
                width:1000px;
                height:100px;
                background:rgba(0,100,100,0.2);
            }
            .left{
                float: left;
                width:100px;
                height:300px;
                background:rgba(100,0,100,0.2);
            }
            .cc{
                float: left;
                width:800px;
                height:300px;
                background:rgba(0,100,0,0.2);
            }
            .right{
                float: left;
                width:100px;
                height:300px;
                background:rgba(0,0,100,0.2);
            }
        </style>
    </head>
    <body>
        <h1>上中下内的左中右结构</h1>
        <div id="main">
            <div class="up"></div>
            <div class="center">
                <div class="left"></div>
                <div class="cc"></div>
                <div class="right"></div> 
            </div>
            <div class="down"></div> 
        </div>
    </body>
</html>
