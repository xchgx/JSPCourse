<%-- 
    Document   : scroe
    Created on : 2020-10-16, 11:20:02
    Author     : 胡彬
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>程序查询页</title>
        <!--输入 style按enter--> 
        <style type="text/css">
            #mian{/*最外层div*/
                /*background: rgba(255,0,0,0.5);*/
                height: 380px;/*默认为0*/
                width: 300px;/*默认100px*/
                margin: 0 auto;
                border: 4px solid black;
                border-radius: 4px;
            }.title{
                background: linear-gradient(0deg,
                    rgba(38,199,255,1)rgba(27,288,173,1));
                background: rgba(0,0,0,1);
                height: 80px;
                /*width:300px;*/
                text-align: center;
                font-size:30px;
                line-height:80px;
                color: aqua;
                font-weight: bolder;/*字体加粗*/
                letter-spacing: 4px;/*字体间距4px*/
                font-family: "bodoni mt black";
            }
            .body{
                /*background: rgba(0,0,255,0.5);*/
                height:300px;}
            .form{
                /*background: rgba(255,255,255,0.7);*/
                height: 200px;
                font-size:19px ;
                text-align: center;
            }.readme{
                /*background: rgba(0,0,0,0.3);*/
                height: 100px;
            }
            .sep{height: 30px;}/*隔离层*/
            .xh{height: 40px;}/*学号层*/
            .xm{height: 40px;}/*姓名层*/
            .cx{height: 40px;}/*查询层*/
            .red{color: rgba(255,0,0,1);}

        </style>
        <!--<script src="" type="text/javascript" charset="utf-8"></script>-->
    </head>
    <body>
        <!--div#main<tab>-->
        <div id="mian">
            <!--最外层div -->
            <!--div.title -->
            <div class="title">
                成绩信息查询
            </div>
            <!--div.body -->
            <div class="body">
                <!--div.form-->
                <div class="form">
                    <form action="query.jsp" method="post">
                        <div class="sep">
                        </div>
                        <div class="xh red">
                            学号：<input type="text"name="xh"/>
                        </div>
                        <div class="xm red">
                            姓名：<input type="text" name="xm" />
                        </div>
                        <div class="cx" >
                            <input type="submit" value="查询" />
                        </div>
                    </form>
                </div>
                <!-- div.readme -->
                <div class="readme">
                    <span class="red">说明</span>
                    <br />
                    此系统
                    <span class="red">np</span>
                    <br>
                    查询的信息是已经考试的成绩
                    <br>
                    <span class="red">未参加考试</span>
                    的没有账号
                </div>
            </div>
        </div>
    </body>
</html>
