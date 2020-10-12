<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% //处理前端传过来的参数
    request.setCharacterEncoding("UTF-8");
    String[] ahs =request.getParameterValues("ah");//从前端表单中获得name为ah 的数据集合
    String[] jns =request.getParameterValues("jn");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        你的爱好个数有:<%=ahs.length %>个
       <%
         //遍历数组
         for(int i=0;i<ahs.length;i++){
            String ah  = ahs[i];//读取一个元素
        %>
           <p><%=ah%> </p><!--在HTML中，不在小组中 -->
        <%
           }
        %>
    </body>
</html>
