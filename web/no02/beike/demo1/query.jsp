<%-- 
    Document   : query
    Created on : 2020-10-7, 9:48:04
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%
    request.setCharacterEncoding("UTF-8");
    String xh = request.getParameter("xh");//获得传递过来的学号(xh)参数，来自于表单中的name="xh"
    String xm = request.getParameter("xm");//姓名
    //模拟一些数据，用来测试
    String xhs[] = {"20192071001","20192072002"};
    String xms[] = {"张三","李四"};
    String resultXh = "";//查找数据集合，寻找匹配项
    String resultXm = "";//查找数据集合，寻找匹配项
    for(int i = 0; i<xhs.length; i++){
        String h = xhs[i];
        if(h.equals(xh)){
            resultXh = xhs[i];
            resultXm = xms[i];
            break;
        }
    }
%>
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
                <div class="title">成绩信息查询结果</div>
                <div class="body">
                    <table border="1" style="border-collapse: collapse;">
						<caption>查询结果</caption>
                        <tr><td>学号：</td><td><%=xh%></td></tr>
						<tr><td>姓名：</td><td><%=resultXm%></td></tr>
						<tr><td>成绩：</td><td>
                                                        <%
                                                            if(resultXh.isEmpty()){//判断字符串是否为空，如果是空表示没有找到合法的用户
                                                                out.println("查无此人，请核对后再试。");
                                                            }else{//如果找到了就显示该用户（学生学号）的成绩信息
                                                        %>
							语文：75<br>
							数学：88<br>
							英语：63<br>
                                                        <%}%>
						</td></tr>
                    </table> 
                    <div class="readme">
                        <span>说明：</span><br>
                        此系统查询的信息是当前已经<span>考试过</span>的成绩。 
						<a href="demo1.jsp">点击返回，继续查询</a>
                    </div>
                </div>
            </div><!--查询窗口-->
        </div>
    </body>
</html>

