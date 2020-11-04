<%-- 
    Document   : 左中右布局
    Created on : 2020-10-26, 21:59:33
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>左右布局</title>
        <style type="text/css">
            .left{
                float:left;/*向左浮动*/
                width:300px;
                height:400px;
                background: rgba(200,0,0,0.3);
            }
            .center{
                float:left;/*向左浮动*/
                width:600px;
                height: 400px;
                background: rgba(200,0,200,0.3);
                
            }
            .right{
                float:left;/*向右浮动*/
                width:200px;
                height: 400px;
                background: rgba(200,200,0,0.3);
            }
        </style>
    </head>
    <body>
        <h1>左中右布局</h1>
<div class="left"></div>
<div class="center"></div>
<div class="right"></div>
    </body>
</html>
