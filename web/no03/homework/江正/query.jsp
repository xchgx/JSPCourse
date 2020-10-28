<%-- 
    Document   : query
    Created on : 2020-10-16, 11:35:47
    Author     : 江正
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String xh = request.getParameter("xh");//获得表单中xh的值
 String xm = request.getParameter("xm");//获得表单中xm的值
 String[] xhs = {"20192071001","20192017002","20192071003"};//学号数组
 String[] xms = {"张三","李四","王五"};//姓名数组
  String[] score = {"语文：80","语文：90","语文：85"};//语文成绩数组
  String finXh ="";//找到学号
  String finXm ="";//找到姓名
  String finScore ="";//找到成绩
  boolean finded = false;//默认没找到，设置为false
  for (int i = 0; i <xhs.length; i++) {//遍历数组
            String s = xhs[i];//获得每个数组元素，临时保存变量s中
            if(s.equals(xh)){//如果数组中某个元素和学号相等
                //表示学号输入正确
                finded = true;//修改标记已找到true
                finXh = xhs[i];//把对应的学号保存在finXh中
                finXm = xms[i];//把对应的姓名保存在finXm中
                finScore = score[i];//把对应的成绩保存在finScorre中
            }
      }
  if(finded == false){//如果没找到，说明输入错误
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
        <h1>学号：<%=finXh%>,姓名：<%=finXm%>,分数：<%=finScore%></h1>
    </body>
</html>
