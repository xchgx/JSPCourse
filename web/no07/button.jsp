<%-- 
    Document   : button
    Created on : 2020-11-5, 11:49:14
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            button{
                width:100px;
                height: 50px;
                background: rgba(0,100,190,0.8);
                border-radius: 4px;
                border: 1px solid rgba(0,100,190,1); 
                color:white;
                font-size: 20px;
                transform:all .5s;
                margin-top: 0px;
            }
            button:hover{
                box-shadow: 1px 1px 1px rgba(0,200,290,1); 
                margin-top: -10px;
            }
        </style>
    </head>
    <body>
        <button>Hello World!</button>
           
    </body>
</html>
