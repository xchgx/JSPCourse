<%-- 
    Document   : doLogin
    Created on : 2020-10-8, 1:02:20
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname = request.getParameter("uname");
String upass = request.getParameter("upass");
if(uname.equals("admin") && upass.equals("123456")){%>
<h1>登录成功。欢迎<%=uname%>来到管理系统后台。
<%}else{%>
<h1>登录失败，请返回重试</h1>
<%}%>
