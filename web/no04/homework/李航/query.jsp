<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:26
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String xh = request.getParameter("xh");//获取表单中的name为xh的值
    String xm = request.getParameter("xm");//获取表单中的name为xm的值
    String[] xhs = {"201920447", "201920448", "201920449"};//学号数组
    String[] xms = {"张三", "李四", "王五"};//姓名数组
    String[] score = {"语文：80", "语文：85", "语文：90"};//语文成绩
    String findXh = "";//找到学号
    String findXm = "";//找到姓名
    String findScore = "";//找到成绩
    boolean finded = false;//默认没有找到false
    for (int i = 0; i < xhs.length; i++) {//遍历数组
        String s = xhs[i];//获取每个数组元素，保存在临时变量s中
        String m = xms[i];//从姓名数组中获取相对应的姓名元素
        if (s.equals(xh) && xm.equals(m)) {//如果数组中某个元素和学号相等
            //表示输入的学号正确
            finded = true;//修改标记为已找到（true）
            findXh = xhs[i]; //把对应的学号保存在findXh中
            findXm = xms[i];//把对应的名字保存在findXm中
            findScore = score[i];//把对应的成绩保存在findgScore中

        }
    }
    if (finded == false) {//如果没有找到，说明输入错误
        //如果输入错误，直接跳转到查询页面
//        request.getRequestDispatcher("score.jsp").forward(request, response);
        findXh = xh;//如果没有找到学号，就把页面传递过来的学号作为显示内容
        findXm = "未找到（无此数据）";
        findScore = "查无此人，请核对后再试。";

    }
%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩查询结果</title>
        <style type="text/css">/* 输入style按回车健 */
            #main{
                /* background:rgba(255,0,0,0.5); */
                height:auto; /* 原来是380px*/
                width:300px;
                margin:0 auto;
                border:1px solid rgba(0,0,0,0.5);/* 边框设置 */
                border-radius: 4px;/* 圆角边框 */
                box-shadow: 4px 4px 4px rgba(0,0,0,0.8);/*盒子阴影*/

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
                text-shadow:2px 2px 1px rgba(10,10,10,0.7);
            }
            .body{
                /* background:rgba(0,0,255,0.5); */
                height:300px;
                padding: 16px;
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



    </head>

    <body>
        <div id="main">
            <div class="title">成绩信息查询表</div>
            <div class="body">
                <div style="height:10px;"></div>
                <div class="form">
                    <!-- 表单 -->
                    <table border="1" align="center" width="100%"><!-- 表格标签 -->
                        <caption>成绩查询结果</caption>
                        <tr><!-- 行 -->
                            <td>学号</td><!-- 列 -->
                            <td><%=findXh%></td><!-- 列 -->
                        </tr>
                        <tr><td>姓名</td><td><%=findXm%></td></tr><!-- 行 -->
                        <tr><td>成绩</td><td><%=findScore%></td></tr><!-- 行 -->
                    </table>
                </div>
                <!-- div.form -->
                <div class="readme"><div class="red">说明：</div></br>此系统查阅的信息是已经考试过的成绩
                    <span class ="red">未参加考试</span>的不显示出来.
                    <br>
                    <a href="score.jsp" >点击返回，继续查询</a>
                </div>
                <!-- div.readme -->
            </div>
        </div>
    </body>
</html>
