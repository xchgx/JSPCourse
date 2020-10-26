<%-- 
    Document   : doHabby
    Created on : 2020-10-9, 10:54:20
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");//设置请求编码
    String[] ahs = request.getParameterValues("ah");
    String[] jns = request.getParameterValues("jn");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <br>
        你的爱好个数有：<%=ahs.length%>个
        <%
            //遍历数组
            for (int i = 0; i < ahs.length; i++) {
                String ah = ahs[i];//读取一个元素
                %>
        <p><%=ah%></p>
        <%
            }
        %>
        <br>
        你的技能个数有：<%=jns.length%>个
        <%
            //遍历数组
            for (int i = 0; i < jns.length; i++) {
                String jn = jns[i];//读取一个元素
                %>
        <p><%=jn%></p>
        <%
            }
        %>
    </body>
</html>
