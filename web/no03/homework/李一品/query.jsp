<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  String xh=request.getParameter("xh");
    String xm=request.getParameter("xm");
    String[] xhs={"2019001","2019002","2019003"};
        String[] xms={"张三","李四","王五"};
            String[] score={"语文80","数学90","语文70","英语88"};
            String findXh="";
            String findXm="";
            String findScore="";
            boolean finded=false;
for (int i = 0; i <xhs.length; i++) {
        String s=xhs[i];
        if (s.equals(xh)) {//如果数组中某个元素和学号相等
            //表示输入的学号正确
            finded =true;
                findXh=xhs[i];
                  findXm=xms[i];
                    findScore=score[i];//把对应的成绩
            }
    }
if (finded==false) {//如果没找到，说明输入错误
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
        <h1>学号：<%=findXh%>  姓名：<%=findXm%>  分数：<%=findScore%></h1>
    </body>
</html>
