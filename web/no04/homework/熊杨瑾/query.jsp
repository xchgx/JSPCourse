<%-- 
    Document   : query
    Created on : 2020-10-16, 11:31:50
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
    String[] xhs = {"2019", "2018", "2017"};
    String[] xms = {"张三", "李四", "王五"};
    String[] score = {"语文：80", "语文：90", "语文：100"};
    String findXh = "";
    String findXm = "";
    String findScore = "";
    boolean finded = false;
    for (int i = 0; i < xhs.length; i++) {
        String s = xhs[i];
        String m = xms[i];
        if (s.equals(xh) && m.equals(xm)) {
            finded = true;
            findXh = xhs[i];
            findXm = xms[i];
            findScore = score[i];
        }
    }
    if (finded == false) {
//        request.getRequestDispatcher("score.jsp").forward(request, response);
        findXh = xh;
        findXm = "未找到（无此数据）";
        findScore = "查无此人，请核对后再试。";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>



        <meta charset="utf-8">
        <title>成绩查询页</title>
        <style type="text/css">
            /*css样式表 代码*/
            #main{/* 最外层div */
                /* background: rgba(255,0,0,0.5); */
                height:auto;/* 默认为0 */
                width: 300px;/* 默认100% */
                margin: 0 auto;
                border: 1px solid rgba(0,0,0,.5);
                border-radius: 4px;
                padding: 4px;
                box-shadow: 4px 4px 4px rgba(0,0,0,0.8);

            }
            .title{
                background:linear-gradient(
                    0deg,
                    rgba(31,130,201,1),
                    rgba(31,130,201,.4));
                /* background: rgba(0,255,0,0.5); */
                height: 80px;
                text-align: center;/* 居中 */
                font-size: 30px;
                line-height: 80px;
                color: rgba(255,255,255,1);
                font-weight: bolder;/* 字体加粗 */
                letter-spacing: 4px;/* 字体间距 */
                font-family: "microsoft yahei";
                text-shadow:2px 2px 1px rgba(10,10,10,0.7);
            }
            .body{
                /* background: rgba(0,0,255,0.5); */
                height: 300px;
                padding: 16px;

            }
            .form{
                /* background: rgba(255,255,255,0.5); */
                height: 200px;
                font-size: 18px;
                text-align: center;
            }
            .readme{
                /* background: rgba(0,0,0,0.5); */
                height: 100px;
            }
            .sep{height: 30px;}/* 用来充当隔离层 */
            .xh{height: 60px;}/* 学号层 */
            .xm{height: 60px;}/* 姓名层 */
            .cx{height: 60px;}/* 学号层 */
            .red{color: rgba(255,0,0,1);}
        </style>

    <body>
        <div id="main"><!-- 最外层div -->
            <div class="title">成绩信息查询</div><!-- 上 -->
            <div class="body"><!-- 下 -->
                <div style="heighe:10px;"></div>
                <div class="form">
                    <table border="1" align="center" width="100%">
                        <caption>成绩查询结果</caption>
                        <tr>
                            <td>学号</td>
                            <td><%=findXh%></td>
                        </tr>
                        <tr>
                            <td>姓名</td>
                            <td><%=findXm%></td>
                        </tr>
                        <tr>
                            <td>成绩</td>
                            <td><%=findScore%></td>
                        </tr>
                    </table>
                </div><!-- 里层上 -->
                <div class="readme">
                    <span class="red">说明</span><br>
                    此系统查询的信息是已经考试过的成绩，
                    <span class="red">未参加考试</span>的显示不出来.<br>
                    <a href="score.jsp">点击返回，继续查询</a>
                </div>
            </div><!-- 里层下 -->
        </div><!-- 下 -->
    </div><!-- 最外层div -->
</body>


</html>
