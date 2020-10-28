<%-- 
    Document   : queryjsp
    Created on : 2020-10-16, 11:32:28
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String xh=request.getParameter("xh");
String xm=request.getParameter("xm");
String[] xhs={"20192071001","20192071002","20192071003"};
String[] xms={"张三","李斯","王五"};
String[]  score={"语文:80","语文:90","语文:100"};
String findXh="";
String findXm="";
String findscore="";
boolean finded =false;   
for (int i=0;  i  <xhs.length; i++){
       String s =xhs[i];
       if(s.equals(xh)){
       finded=true;
       findXh=xhs[i];
       findXm=xms[i];
       findscore=score[i];
       }}
   if(finded ==false){
   request.getRequestDispatcher("score.jsp").forward(request,response);
       
       }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>学号:<%=findXh%>,姓名:<%=findXm%>,分数:<%=findscore%></h1>
    </body>
</html>
