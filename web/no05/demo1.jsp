<%-- 
    Document   : demo1
    Created on : 2020-10-26, 19:09:18
    Author     : Administrator
--%>
<%
    String index = request.getParameter("index");
    int num = 0;
    if (index != null) {
        num = Integer.parseInt(index);
    }
    String[] navs = {"首页", "分类浏览", "热门咨询", "排行榜", "联系我们", "关于我们"};
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>导航菜单</title>
        <style type="text/css">
            #main{
                width: 700px; 
                height: 40px;
                /* background-color: rgba(200,0,0,0.4); */
                margin: 0 auto;
            }
            #main ul{
                list-style: none;
                width: 700px;
                padding: 0;
                margin:0 auto;
                text-align: center;
            }
            #main ul li {
                float: left;
                width: 100px; 
                height: 40px; 
                background-color: rgb(5,120,200); 
                line-height: 40px;
                margin-left: 1px;
            }
            #main ul li a{ 
                text-decoration: none;
                color: rgba(255,255,255,1);
            } 

            #main ul li:hover{ 
                background-color: rgb(203,39,56); 
            } 
            #main .active{
                background-color: rgb(203,39,56);  
            }
            #nav{
                width: 100px; 
                height: 400px;
                /* background-color: rgba(200,0,0,0.4); */
            }
            #nav ul{
                list-style: none;
                width: 700px;
                padding: 0;
                margin:0 auto;
                text-align: center;
            }
            #nav ul li { 
                width: 100px; 
                height: 40px; 
                background-color: rgb(5,120,200); 
                line-height: 40px;
                margin-left: 1px;
            }
            #nav ul li a{ 
                text-decoration: none;
                color: rgba(255,255,255,1);
            } 

            #nav ul li:hover{ 
                background-color: rgb(203,39,56); 
            } 
            #nav .active{
                background-color: rgb(203,39,56);  
            }
        </style>
    </head>
    <body>
        <div id="main">
            <ul>
                <%
                    for (int idx = 0; idx < navs.length; idx++) {
                        String n = navs[idx];
                        if (num == idx) {
                            out.println("<li class=\"active\"><a href=\"demo1.jsp?index=" + idx + "\">" + n + "</a></li>");
                        } else {
                            out.println("<li><a href=\"demo1.jsp?index=" + idx + "\">" + n + "</a></li>");
                        }
                    }
                %> 
            </ul>
        </div>
        <div id="nav">
            <ul>
                <%
                    for (int idx = 0; idx < navs.length; idx++) {
                        String n = navs[idx];
                        if (num == idx) {
                            out.println("<li class=\"active\"><a href=\"demo1.jsp?index=" + idx + "\">" + n + "</a></li>");
                        } else {
                            out.println("<li><a href=\"demo1.jsp?index=" + idx + "\">" + n + "</a></li>");
                        }
                    }
                %> 
            </ul>
        </div>
    </body>
</html>
