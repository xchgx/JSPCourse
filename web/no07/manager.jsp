<%-- 
    Document   : manager
    Created on : 2020-10-30, 22:10:55
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
    String loginUsername = (String) session.getAttribute("username");
    if (loginUsername == null) {
        response.sendRedirect("login.jsp");
        return;
    } 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <style type="text/css">
            #main{}
            .header{
                height: 30px;
            }
            .logo{
                float: left;
                font-size: 20px;
                font-weight: bolder;
            }
            .user,.refresh,.logout{
                float: right;
                margin: 0 2px;
            }
            .refresh{
                width: 60px;
                height: 24px;
                line-height: 24px;
                background: rgba(0,180,200,1);
                text-align: center;
                color: white;
                border-radius: 4px;
                box-shadow: 1px 1px 1px rgba(110,110,110,1),inset 0px 1px 1px rgba(0,150,170,1);
            }
            .logout{
                width: 60px;
                height: 24px;
                line-height: 24px;
                background: rgba(250,100,0,1);
                text-align: center;
                color: white;
                border-radius: 4px;
                box-shadow: 1px 1px 1px rgba(110,110,110,1),inset 0px 1px 1px rgba(200,100,0,1);
            }
            .menu{
                float: left;
                background: rgba(0,0,0,.8);
                width: 100px;
                height: 500px;
            }
            .content{
                float: left;
                background: rgba(200,200,200,1);
                width: 100%;
                height: 500px;
                margin-right: -100px;
            }
        </style>
    </head>
    <body>
        <div id="main">
            <div class="header">
                <div class="logo">后台管理系统</div>
                <div class="logout">退出</div>
                <div class="refresh">刷新</div>
                <div class="user"><%=loginUsername%></div>
            </div>
            <div class="body">
                <div class="menu"></div>
                <div class="content">

                </div>
            </div>
        </div>
    </body>
</html>

