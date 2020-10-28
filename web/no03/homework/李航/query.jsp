<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:26
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String xh=request.getParameter("xh");//获取表单中的name为xh的值
String xm=request.getParameter("xm");//获取表单中的name为xm的值
String []xhs={"201920447","201920448","201920449"};//学号数组
String []xms={"张三","李四","王五"};//姓名数组
String []score={"语文：80","语文：85","语文：90"};//语文成绩
String findXh="";//找到学号
String findXm="";//找到姓名
String findScore="";//找到成绩
boolean finded=false;//默认没有找到false
for(int i=0;i<xhs.length;i++){//遍历数组
    String s =xhs[i];//获取每个数组元素，保存在临时变量s中
    if(s.equals(xh)){//如果数组中某个元素和学号相等
        //表示输入的学号正确
        finded=true;//修改标记为
        findXh=xhs[i];
        findXm=xms[i];
        findScore=score[i];
        
    }
}if(finded==false){
    request.getRequestDispatcher("score.jsp").forward(request, response);
    
}
%>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>学号：<%=findXh%>,姓名：<%=findXm%>,分数<%=findScore%></body>
</html>
