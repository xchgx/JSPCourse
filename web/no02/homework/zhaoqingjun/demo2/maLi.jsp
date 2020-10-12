<%-- 
    Document   : maLi
    Created on : 2020-10-9, 10:53:49
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%//处理传递过来的参数
    request.setCharacterEncoding("UTF-8");//设置请求对象得编码为UTF-8
   String[] ahs =request.getParameterValues("ah");//从前端表单中获得name为ah的数据集合（数组）
 String[] jns =request.getParameterValues("jn");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
      你的爱好个数有:<%=ahs.length%>个
      <% //遍历数组
     for(int i=0;i<ahs.length;i++){
     String ah = ahs[i];//读取一个元素
     %>
    <p> <%=ah%></p><!--在html中，不在小脚本范围内 -->
     <%
     }
      %>
        你的技能个数有:<%=jns.length%>个
      <% //遍历数组
     for(int j=0;j<jns.length;j++){
     String jn = jns[j];//读取一个元素
     %>
    <p> <%=jn%></p><!--在html中，不在小脚本范围内 -->
     <%
     }
      %>
    </body>
</html>
