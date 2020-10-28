<%-- 
    Document   : query
    Created on : 2020-10-16, 11:31:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
    String[] xhs = {"20192071001", "20192071002", "20192071003"};
    String[] xms = {"张三", "李四", "王五"};
    String[] score = {"语文：80", "语文：90", "语文：100"};
    String findXh = "";
    String findXm = "";
    String findScore = "";
    boolean finded = false;
    for (int i = 0; i < xhs.length; i++) {
        String s = xhs[i];
        String m = xms[i];
        if (s.equals(xh)&&m.equals(xm)) {
            //如果数组中某个元素和学号相等
            //表示输入的学号正确
            finded = true;//修改标记为已找到(true)
            findXh = xhs[i];
            findXm = xms[i];
            findScore = score[i];
        }
    }
    if (finded == false) {
//        request.getRequestDispatcher("score.jsp").forward(request, response);
        findXh = xh;//如果没有找到学号，就把页面传递过来的学号，作为我们显示的内容
        findXm = "未找到(无此数据)";
        findScore = "查无此人，请核对后再试。";
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 

        <style type="text/css">
            /*css样式表 代码*/
            #main{
                /* background:rgba(255,0,0,0.5); */
                height:auto;/*默认为0*/
                width:300px;
                margin: 0 auto;
                border: 1px solid rgba(0,0,0,.5);/*边框设置*/
                border-radius: 4px;/*圆角边框*/
                padding: 4px;/*内部填充*/
                box-shadow: 3px 3px 3px rgba(0,0,0,0.8);
            }
            .title{                                                                                                                                                                                                             
                background:linear-gradient(
                    0deg,
                    rgba(31,130,201,1),
                    rgba(31,130,201,.4));
                height:80px;
                /*下面是修改字体样式的css代码*/
                text-align: center;/*文本对齐：居中*/
                font-size: 30px;/*字体大小：30px*/
                /*字体垂直居中，调整行(line)高(hight)与块级标签高度一致*/
                line-height: 80px;
                color: rgba(250,250,250,1);
                font-weight: bolder;/*字体加粗*/
                letter-spacing:4px;/*字体间距*/
                font-family: "微软雅黑";
                
                text-shadow:0px 1px 1px rgba(10,10,10,0.7)/*右边0，下边1px，模糊1px，灰色*/
            }
            .body{
                /* background:rgba(0,0,255,0.5); */
                height:300px;
                padding: 16px;/*body内间距*/
            }
            .form{
                /* background:rgba(255,255,0,0.8); */
                height:200px;
                font-size:18px;
                text-align: center;
            }
            .readme{
                /* background:rgba(0,0,0,0.5); */
                height:100px;
            }
            .sep{height: 30px;}
            .xh{height: 60px;}/*学号层*/
            .xm{height: 60px;}/*姓名层*/
            .cx{height: 60px;}/*查询层*/
            .red{color: rgba(255,0,0,1);}/*单独设置字体红色*/
        </style>

    </head>
    <body>

        <!--div#main<tab>-->
        <div id="main">
            <!--div.title<tab>-->
            <div class="title">成绩信息查询</div>
            <!--div.body      <tab>-->
            <div class="body">
                <div style="height:10px;"></div>
                <div class="form">

                    <table border="1" align="center" width="100%">
                        <caption>成绩查询结果</caption>
                        <tr><!--行-->
                            <td>学号</td>
                            <td><%=findXh%></td>
                        </tr>
                        <tr><td>姓名</td><td><%=findXm%></td></tr>
                        <tr><td>成绩</td><td><%=findScore%></td></tr>
                    </table>	
                </div>
                    <div class="readme"><span class="red">说明</span><br>此系统查询的信息是已经考试过的成绩，未参加考试的不显示出。
                        <br>
                        <a href="score.jsp" target="blank"><span class="red">点击返回，继续查询</span></a>
                                </div>
                        </div>
                </div>
        </body>
</html>
