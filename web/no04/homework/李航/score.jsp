<%-- 
    Document   : score
    Created on : 2020-10-16, 11:16:42
    Author     : 李航
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <title>成绩查询页</title>
            <style type="text/css">/* 输入style按回车健 */
                #main{
                    /* background:rgba(255,0,0,0.5); */
                    height:380px;
                    width:300px;
                    margin:0 auto;
                    border:1px solid rgba(0,0,0,0.5);/* 边框设置 */
                    border-radius: 4px;/* 圆角边框 */

                }
                .title{
                    background: linear-gradient(0deg,rgba(31,130,201,1),rgba(31,130,201,0.3));
                    /* 线性渐变背景色,参数:方向0-360,起始颜色,终止颜色 */
                    /* background:rgba(31,130,201,0.5); */
                    height:80px;
                    /* eidht:500px; */
                    text-align: center;/* 文本对齐,居中 */
                    font-size:30px;/* 字体大小:30px */
                    line-height: 80px;/* 字体垂直居中.调整行(line)高(height) */
                    color:rgba(255,255,255,1);/* 颜色(默认指的是字体颜色):白色 */
                    font-weight: bolder;/* 字体加粗 */
                    letter-spacing: 4px;/* 字体间距 */
                    font-family: "microsoft yaher";/* 微软雅黑 */

                }
                .body{
                    /* background:rgba(0,0,255,0.5); */
                    height:300px;
                }
                .form{
                    /* background:rgba(255,255,0,1); */
                    height:200px;	
                    font-size: 18px;
                    text-align: center;
                }
                .readme{
                    /* background:rgba(0,0,0,0.5); */
                    height:100px;
                }
                .sep{height: 30px;}
                .xh{height: 60px;}
                .xm{height: 60px;}
                .cx{height: 60px;}
                .red{color: rgba(255,0,0,1);}
            </style>
            <title>

            </title>
        </head>
        <body>
            <div id="main">
                <div class="title">成绩信息查询表</div>
                <div class="body">

                    <div class="form">
                        <!-- 表单 -->
                        <form action="query.jsp"method="post">
                            <div class="sep"></div>
                            <div class="xh">学号：<input type="text" name="xh"><br></div>
                            <div class="xm">姓名：<input type="text" name="xm"><br></div>
                            <div class="cx"><input type="submit" value="查询"></div>
                        </form>
                    </div>
                    <!-- div.form -->
                    <div class="readme"><div class="red">说明：</div></br>此系统查阅的信息是已经考试过的成绩，未参加考试的不显示出来
                    </div>
                    <!-- div.readme -->
                </div>
            </div>
        </body>
    </html></h1>
</body>
</html>
