<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:30
    Author     : 张佳豪
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String xh = request.getParameter("xh");//获得表单中name为xh的值
    String xm = request.getParameter("xm");//获得表单中name为xm的值
    String[] xhs = {"20192071001","20192071002","20192071003"};//学号数组
    String[] xms = {"张三","李四","王五"};//姓名数组
    String[] scroe = {"语文：80","语文：90","语文：100"};//语文成绩
    String findXh="";//找到的学号
    String findXm="";//找到的姓名
    String findScroe="";//找到的成绩
    boolean finded = false;//默认没有找到，设置为false
    for (int i = 0; i < xhs.length; i++) {//遍历数组
            String s = xhs[i];//获得每个数组元素，保存在临时变量s中
            if(s.equals(xh)){//如果数组中某个元素和学号相等
                //表示输入的学号正确
            finded = true;//修改标记为已找到，设置为true
            findXh=xhs[i];//把对应的学号保存到findXh中
            findXm=xms[i];//把对应的姓名保存到findXm中
            findScroe=scroe[i];//把对应的成绩保存到findScore中

            }
        }
    if(finded == false) {//如果没有找到说明输入错误
            request.getRequestDispatcher("scroe.jsp").forward(request, response);
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>学号：<%=findXh%>，姓名：<%=findXm%>，分数：<%=findScroe%>。</h1>
    </body>
</html>
