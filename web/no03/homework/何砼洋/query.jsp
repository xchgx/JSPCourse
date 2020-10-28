<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:27
    Author     : 何砼洋
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String xh = request.getParameter("xh");//获得表单中name为xh的值
    String xm = request.getParameter("xm");//获得表单中name为xm的值
    String[] xhs = {"20192071001", "20192071002", "20192071003"};//学号组
    String[] xms = {"张三", "李四", "王麻子"};//姓名数组
    String[] score = {"语文:80", "语文90", "语文100"};//语文成绩
    String findXh = "";//找到的学号
    String findXm = "";//知道的姓名
    String findScore = "";//知道的成绩
    boolean finded = false;//默认没有找到,设置为false
    for (int i = 0; i < xhs.length; i++) {//遍历数组
        String s = xhs[i];//获得
        if (s.equals(xh)) {//如果数组中某个元素和学号相等
            //表示输入正确的学号正确
            finded = true;//修改标记已找到(true)
            findXh = xhs[i];//把对应的学号保存在findXh中
            findXm = xms[i];//把对应的姓名保存在findXm中
            findScore = score[i];//把对应的成绩保存在findScore中
        }
    }
    if (finded == false) {//如果没有找到,说明输入有误。
        //如果输入有误，直接转发到查询页面
        request.getRequestDispatcher("score.jsp").forward(request, response);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>学号：<%=findXh%>, 姓名<%=findXm%>,分数<%=findScore%></h1>
    </body>
</html>
