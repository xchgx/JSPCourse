<%-- 
    Document   : visitServlet
    Created on : 2020-11-19, 9:41:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>访问方式</title>
    </head>
    <body>
        <h1>两种访问方式</h1>
        <a href="/JSPCourse/HelloServlet">GET 方式访问</a>
        <br>

        <form action="/JSPCourse/HelloServlet" method="post">
            <input type="submit" value="POST 访问">
        </form>

        <form action="/JSPCourse/HelloServlet" method="get">
            <input type="submit" value="GET 访问">
        </form>

        <div><button onclick="ajaxLoad()">Ajax Get(Load)访问</button></div>
        <div><button onclick="ajaxPost()">Ajax Post访问</button></div>
        <div><button onclick="ajaxGet()">Ajax Get访问</button></div>
        <div id="ajaxData">此处显示Ajax异步加载内容</div>

        <script src="jquery-1.10.2.min.js" type="text/javascript"></script>
        <script>
            function ajaxLoad() {
                $("#ajaxData").load("/JSPCourse/HelloServlet");
            }
            function ajaxGet() {
                $.get("/JSPCourse/HelloServlet", function (res) {
                    $("#ajaxData").html(res);
                });
            }
            function ajaxPost() {
                 $.post("/JSPCourse/HelloServlet", function (res) {
                    $("#ajaxData").html(res);
                });
            }
        </script>
    </body>
</html>
