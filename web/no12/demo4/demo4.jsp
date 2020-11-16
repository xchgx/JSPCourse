<%-- 
    Document   : demo4
    Created on : 2020-11-16, 23:24:12
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
        <button id="btn1">Ajax加载1列表</button>
        <button id="btn2">Ajax加载2</button>
        <button id="btn3">Ajax加载3</button>
        <div id="content"></div>
        <script src="jquery-1.10.2.min.js" type="text/javascript"></script>
        <script>
            $("#btn1").click(function(){
                $("#content").load("list.jsp");
            });
            $("#btn2").click(function(){
//                $("#content").load("../demo1/demo1.jsp");
                $.ajax({
                    url:"../demo1/demo1.jsp",
                    type: 'POST',
                    data: '',
                    success:function(msg){
                        $("#content").html(msg);
                    }
                })
            });
            $("#btn3").click(function(){
                $("#content").load("../demo2/demo2.jsp");
            });
        </script>
    </body>
</html>
