<%-- 
    Document   : sushu
    Created on : 2020-10-1, 21:36:47
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    100以内的素数为：<br>
    <%
    loop:
        for(int i = 2,k = 0;i < 100;i++) {
        	for(int j = 2;j < i;j++)
        		if(i % j == 0)
        			continue loop;
        	out.print(i + "\t");//输出素数
        	k++;
            if(k % 5 == 0)//每行输出5个数
            	out.print("<br>");
        }
    %>
    </body>
</html>
