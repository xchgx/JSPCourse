<%-- 
    Document   : newjspcount
    Created on : 2020-10-1, 21:31:34
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<%!
	int num = 0;
	synchronized void add(){//线程同步化
		num++;
	}
%>
<%
	add();
%>
<center>你是第<%= num%>位访问本网页的客人。</center>
    </body>
</html>
