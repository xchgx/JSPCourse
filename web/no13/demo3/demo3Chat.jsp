<%-- 
    Document   : demo3
    Created on : 2020-11-19, 19:21:52
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>聊天室</title>
    </head>
    <body>
        <h1>班级聊天室</h1>
        <input type="text" id="name" placeholder="请输入昵称">
        请留言：<input type="text" id="msg">
        <button onclick="send()">发送</button>
        <button onclick="refresh()">刷新</button>
        <div id="history"></div>
        <script src="jquery-1.10.2.min.js"></script>
        <script>
            function send(){
                var name = $("#name").val();
                var msg = $("#msg").val();
                $("#history").load("/JSPCourse/ChatServlet",{"msg":msg,"name":name,"type":"send"});
            }
            function refresh(){
                $("#history").load("/JSPCourse/ChatServlet",{"type":"refresh"});
            }
            setInterval(refresh,1000);
        </script>
    </body>
</html>
