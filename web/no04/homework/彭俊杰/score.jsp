<%-- 
    Document   : score
    Created on : 2020-10-16, 11:16:29
    Author     : 赵清俊
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>成绩查询页</title>
        <style type="text/css">
            #mian {
                /*background: rgba(255,0,0,0.5);*/
                height: 380px;
                /*默认为0*/
                width: 300px;
                /*默认为100*/

                margin: 0 auto;
                /*块级标签居中*/
                border: 1px solid rgba(0, 0, 0, .5);
                /*边框设置*/
                border-radius: 4px;
                /*圆角边框*/
                padding: 10px;
                /*内部*/
            }

            .title {
                /*线性渐变背景色，参数：方向0-360度，起始颜色，终止颜色*/
                background: linear-gradient(0deg, rgba(31, 130, 201, 1), rgba(31, 130, 201, 1));
                /*background: rgba(31,130,201,1);*/
                height: 80px;
                /*默认为0*/
                /*width: 300px;默认为100 删除该属性 让他默认值*/
                /*下面是修改字体样式的css代码*/
                text-align: center;
                /*文本对齐 居中*/
                font-size: 30px;
                /*字体大小：20px*/
                /*字体垂直居中；调整行 line 高height 与块级标签高度一致*/
                line-height: 80px;
                /*颜色 （默认指的就是字体颜色）；白色*/
                /*color: rgba(255,255,255,1);*/
                font-weight: bolder;
                /*字体加粗*/
                letter-spacing: 4px;
                /*字体间距*/
                font-family: "microsoft yahei";
                /*微软雅黑*/
            }

            .body {
                /*background: rgba(0,0,25,0.5);*/
                height: 300px;
                /*默认为0*/
            }

            .form {
                /*类选择器，选中那些class为form的所有标签*/
                /*background: rgba(255,255,25,0.7);*/
                height: 200px;
                /*默认为0*/
                font-size: 18px;
                text-align: center;
            }

            .readme {
                /*background: rgba(0, 0, 0, 0.7);*/
                height: 100px;
                /*默认为0*/
            }

            .sep {
                height: 20px;
            }

            /*用来充当隔离层*/
            .xh {
                height: 60px;
            }

            /*学号层*/
            .xm {
                height: 60px;
            }

            /*姓名层*/
            .cx {
                height: 60px;
            }

            /*查询层*/
            .red {
                color: rgba(255, 0, 0, 1)
            }

            /*单独设置字体红色*/
        </style>
    </head>
    <body>
        <div id="mian">
            <!-- 最外层的div-->
            <div class="title">成绩信息查询</div>
            <div class="body">
                <div class="form">
                    <form action="query.jsp" method="post">
                        <div class="sep"></div>
                        <div class="xh red">学号：<input type="text" name="xh"></div>
                        <div class="xm">姓名：<input type="text" name="xm"></div>
                        <div class="cx"><input type="submit" value="查询" /></div>
                    </form>
                </div>
                <div class="readme">说明<br>此系统查询的信息是已经考试过的成绩，<span class="red">未参加考试的不显示出来</div>
            </div>
        </div>
    </body>
</html>
