<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String xh = request.getParameter("xh");//获得表单中name为xh的值
String xm = request.getParameter("xm");//获得表单中name为xm的值
String[] xhs = {"1008611","100265454","105955526"};//学号数组
String[] xms = {"张三","李四","王五"};//学号数组
String[] score = {"语文：80","语文86","语文95"};//学号数组
String findXh = "";//找到的学号
String findXm = "";//找到的姓名
String findScore = "";//找到的成绩
boolean finded = false;//默认没有找到，设置为false获得每个数组元素
for (int i = 0; i < xhs.length; i++) {//遍历数组
        String s = xhs[i];//获得每个数组元素，保存在临时变量s中
        if(s.equals(xh)){//如果数组中某个元素和学号相等
            //表示输入的学号正确
        finded = true;//修改标记为已找到（true）
        findXh = xhs[i];//把对应的学号保存在findXh中
         findXh = xhs[i];//把对应的学号保存在findXm中
         findScore = score[i];//把对应的成绩保存在findScore中
        }
    }
if(finded == false){//如果没有找到，说明输入错误，
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
        <h1>学号：<%=findXh%>,姓名：<%=findXm%>,分数：<%=findScore%></h1>
    </body>
</html>
