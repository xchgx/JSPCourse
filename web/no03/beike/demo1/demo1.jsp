<%-- 
    Document   : demo1
    Created on : 2020-10-4, 17:37:38
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title></title>
        <style type="text/css">
            .query{
                width: 300px;
                margin: 0 auto;
                box-shadow: 2px 2px 2px rgba(0,0,0,0.5),
                    inset 1px 1px 1px rgba(255,255,255,0.9);
            }
            .title{
                height: 80px;
                background: linear-gradient(180deg,rgba(24,130,206,0.2),rgba(24,130,206,1));
                font-size: 30px; 
                text-align: center;
                color: aliceblue;
                text-shadow: 1px 1px 1px black;
                line-height: 80px;
            }
            .body{
                padding: 20px;
            }
            .login{
                height: 40px;
            }
            .center{
                text-align: center;
            }
            span{
                color: red;
            }
        </style>
    </head>
    <body>
        <div id="main">
            <div class="query"><!--查询窗口-->
                <div class="title">成绩信息查询</div>
                <div class="body">
<form action="query.jsp" method="post">  
    <div class="login">学号：<input type="text" name="xh"></div>
    <div class="login">姓名：<input type="text" name="xm"></div>
    <div class="login center"><input type="submit" value="查询"/></div>
    <div class="readme">
        <span>说明：</span><br>
        此系统查询的信息是当前已经<span>考试过</span>的成绩。
        (<%=request.getAttribute("error") %>,<%=request.getParameter("xh")%>)
    </div>
</form>
                </div>
            </div><!--查询窗口-->
        </div>
    </body>
</html>
