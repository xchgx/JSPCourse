<%-- 
    Document   : demo2
    Created on : 2020-10-8, 10:53:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <style type="text/css">
            #main{
                width: 500px;
                margin: 0 auto;
                background: darkgrey; 
            }
            .title{

            }
        </style>
    </head>
    <body>
        <div id="main">
            <form action="doSubmit.jsp" method="post">
                <div class="title">请仔细阅读下面的Java代码，从下列选项中选择正确的输出()</div>
                <div class="img"></div>
                <div class="question">
                    <input type="checkbox" value="a=0" name="xx">A. a=0<br>
                    <input type="checkbox" value="a=10" name="xx">B. a=10<br>
                    <input type="checkbox" value="a=5" name="xx">C. a=5<br>
                    <input type="checkbox" value="没有输出" name="xx">D. 没有输出<br>
                </div>
                <div>
                    <input type="submit" value="交卷">
                </div>
            </form>
        </div>
    </body>
</html>
