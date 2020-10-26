<%-- 
    Document   : 作业
    Created on : 2020-10-2, 11:33:19
    Author     : 胡文
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>求1-100的累加和</h1>
        <h2>
         <%
         int a=0;//创建一个用来保存累加结果的变量a
         int n=100;//循环次数
         for(int i=1;i<=100;i++){
             a+=i;//累加到100
             if(i<4){
             out.println(i+"+");
         }       
             if(i==100){
                 out.println("...+"+i);
             }
         }    
          %>
         =<%=a%>
        </h2>
         
    </body>
</html>
