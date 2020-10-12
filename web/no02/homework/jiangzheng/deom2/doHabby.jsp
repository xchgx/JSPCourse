<%-- 
    Document   : doHabby
    Created on : 2020-10-9, 10:53:36
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% //处理前端传递过来的参数
    request.setCharacterEncoding("UTF-8");//设置请求对象的编码为UTF-8
    String[] hbs = request.getParameterValues("hb");//从前端表单中获得name为hb的数据集合（数组）
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        你的爱好个数有：<%=hbs.length %>个
        <%//遍历数组
            for(int i=0;i<hbs.length;i++){
                String hb = hbs[i];//读取一个元素
        %>
            <p><%=hb%></p><!--在HTML中，不在小脚本范围内-->
        <%
            }
        %>
    </body>
</html>
