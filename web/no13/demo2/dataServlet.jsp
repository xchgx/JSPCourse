<%-- 
    Document   : dataServlet
    Created on : 2020-11-19, 9:56:14
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet数据传递</title>
    </head>
    <body>
        <h1>JSP传递数据到Servlet!</h1>
        <a href="/JSPCourse/DataServlet?username=张三">超链接 传递 【张三】</a>
        <form action="/JSPCourse/DataServlet" method="post">
            <input type="text" name="username" value="张三" placeholder="请输入搜索内容">
            <input type="submit" value="POST 传递数据">
        </form>

        <form action="/JSPCourse/DataServlet" method="get" placeholder="请输入搜索内容">
            <input type="text" name="username" value="张三">
            <input type="submit" value="GET 传递数据">
        </form>

        <div><button onclick="ajaxLoad()">Ajax Get(Load)访问</button></div>
        <div><button onclick="ajaxPost()">Ajax Post访问</button></div>
        <div><button onclick="ajaxGet()">Ajax Get访问</button></div>
        <div><input type="text" id="username" value="张三" placeholder="非表单输入框"> </div>
        <div id="ajaxData">此处显示Ajax异步加载内容</div>

        <script src="jquery-1.10.2.min.js" type="text/javascript"></script>
        <script>
            function ajaxLoad() {

                $("#ajaxData").load("/JSPCourse/DataServlet?username=" + $("#username").val());
            }
            function ajaxGet() {
                $.get("/JSPCourse/DataServlet", {"username": $("#username").val()}, function (res) {
                    $("#ajaxData").html(res);
                });
            }
            function ajaxPost() {
                $.post("/JSPCourse/DataServlet", {"username": $("#username").val()}, function (res) {
                    $("#ajaxData").html(res);
                });
            }
        </script>
    </body>
</html>
