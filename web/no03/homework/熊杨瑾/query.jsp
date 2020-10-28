<%-- 
    Document   : query
    Created on : 2020-10-16, 11:31:50
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String xh = request.getParameter("xh");
    String xm = request.getParameter("xm");
   String[] xhs = {"2019","2018","2017"};
   String[] xms={"张三","李四","王五"};
   String[] score={"语文：80","语文：90","语文：100"};
   String findXh="";
   String findXm="";
   String findScore="";
   boolean finded=false;
   for (int i = 0; i < xhs.length; i++) {
           String s =xhs[i];
           if (s.equals(xh)) {
                   finded=true;
                   findXh=xhs[i];
                   findXm=xms[i];
                   findScore=score[i];
               }
       }
   if (finded==false) {
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
        <h1>学号：<%=findXh%>,姓名：<%=findXm%>，分数：<%=findScore%></h1>
    </body>
</html>
