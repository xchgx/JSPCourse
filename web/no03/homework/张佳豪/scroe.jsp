<%-- 
    Document   : scroe
    Created on : 2020-10-16, 11:14:09
    Author     : 张佳豪
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>成绩查询页</title>
        <style type="text/css">
            /*CSS样式代码*/
            #main {
                height: 380px;
                width: 300px;
                margin: 0 auto;
                border: 1px solid rgba(0,0,0,.5);
            }
            .title {
                /* 线性渐变背景色，参数：方向0-360度，起始颜色，终止颜色 */
                background: linear-gradient(0deg, rgba(31, 130, 201, 1), rgba(31, 130, 201, .5));
                /* background: rgba(0, 255, 0, 0.5); */
                height: 80px;
                text-align: center;
                /*字体大小*/
                font-size: 30px;
                /*垂直居中*/
                line-height: 80px;
                color: white;
                font-weight: bold;
                letter-spacing: 4px;
                /*字体间距*/
                font-family: "microsoft yahei";
            }
            .body {
                height: 300px;
            }
            .form {
                height: 200px;
                text-align: center;
                font-size: 18px;
            }
            .readme {
                height: 100px;
            }
            .sep {
                height: 30px;
            }
            /*隔离层*/
            .xh {
                height: 60px;
            }
            /* 学号层 */
            .xm {
                height: 60px;
            }
            /* 姓名层 */
            .cx {
                height: 60px;
            }
            /* 查询层 */
            .red{
                font-weight: bold;
                color: red;
            }
        </style>
    </head>
    <body>
        <!-- div#main<tab> -->
        <div id="main">
            <!-- 最外层div -->
            <!-- div.title -->
            <div class="title">成绩信息查询</div>
            <!-- div.body -->
            <div class="body">
                <div class="form">
                    <form action="query.jsp" method="post">
                        <div class="sep"></div>
                        <div class="xh">学号：<input type="text" name="xh"><br></div>
                        <div class="xm">姓名：<input type="text" name="xm"><br></div>
                        <div class="cx"><input type="submit" value="查询" /></div>
                    </form>
                </div>
                <div class="readme">
                    <div class="red" style="color: red;">说明:</div>
                    此系统查询的信息是已经考试过的学生的成绩，<span class="red">未参加考试</span>的学生的成绩不显示出来。
                </div>
            </div>
        </div>
    </body>
</html>