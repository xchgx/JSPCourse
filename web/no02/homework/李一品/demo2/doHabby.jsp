<%-- 
    Document   : doHabby
    Created on : 2020-10-9, 10:53:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//处理前端传递过来的参数
    request.setCharacterEncoding("UTF-8");
String[] ahs=request.getParameterValues("ah");//从前端表单中获得name为ah的数据集合（数组）

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2>你的爱好个数有:<%=ahs.length%></h2>
       
        <%
        //遍历数组
        for (int i = 0; i < ahs.length; i++) {
                String ah=ahs[i];//读取一个元素
               
                %>
                <p><%=ah%></p><!--在HTML中，不在小脚本范围内-->
                <%
            }
        %>
        
    </body>
</html>
