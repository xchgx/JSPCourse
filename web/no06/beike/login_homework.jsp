<%-- 
    Document   : login
    Created on : 2020-10-30, 21:36:59
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>登录页</title>
        <style type="text/css">
            .header{
                height: 80px;
                background: rgba(200,200,200,.5);
                text-align: center;
                line-height: 80px;
                font-size: 20px;
                color: rgba(0,130,160,1);
                text-shadow: 0px 1px 0px rgba(0,0,0,.5);
            }
            .body{
                height: 300px;
                background: rgba(0,170,200,1);
            }
            .footer{
                height: 80px;
                background: rgba(200,200,200,.5);
                text-align: center;
            }
            .win{
                position: relative;
                width: 200px;
                height: 160px;
                background: white;
                margin: 0px  auto; 
                padding: 10px 20px;
                top: 40px;
                border-radius: 4px;
                border: 1px solid rgba(0,130,160,1);
                box-shadow: 1px 1px 0px rgba(0,130,160,.8),
                    2px 2px 0px rgba(0,130,160,.7),
                    3px 3px 0px rgba(0,130,160,.6),
                    4px 4px 0px rgba(0,130,160,.5),
                    5px 5px 0px rgba(0,130,160,.4),
                    6px 6px 0px rgba(0,130,160,.3),
                    7px 7px 0px rgba(0,130,160,.2),
                    8px 8px 0px rgba(0,130,160,.1);
            }
            .title{
                color: rgba(0,130,160,1);
                text-align: center;
                letter-spacing: 2px;
                font-weight: bolder;
            }
            input{
                width: 90%;
                height: 24px;
                border-radius: 2px;
                border: 1px solid rgba(0,130,160,1);
                padding-left: 24px;
                margin-top: 10px;
            }
            .button button{
                width: 100%;
                margin-top: 10px;
                height: 28px;
                background: rgba(0,170,200,1);
                border: 1px solid rgba(0,130,160,1);
                color: white;
                cursor: pointer;
                transition: all .3s;
                position: relative;
                top: 0px;
            }
            .button button:active{
                /* margin-top: 2px; */
                top: 2px;
            } 
        </style>
    </head>
    <body>
        <div id="main">
            <div class="header">
                湖北开放职业学院管理系统
            </div>
            <div class="body">
                <div class="win">
                    <div class="title">后台登录</div>
                    <form action="doLogin.jsp" method="post">
                    <div class="account">
                        <input type="text" name="username" placeholder="请输入用户名">
                    </div>
                    <div class="password">
                        <input type="password" name="password" placeholder="请输入密码">
                    </div>
                    <div class="button">
                        <button type="submit">登录</button>
                    </div>
                    </form>
                </div>
            </div>
            <div class="footer">
                技术支持：2019级软件技术专业
            </div>
        </div>
    </body>
</html>