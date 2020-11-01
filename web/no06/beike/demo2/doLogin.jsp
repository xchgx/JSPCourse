<%-- 
    Document   : doLogin
    Created on : 2020-10-30, 22:34:01
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("username");
String pwd = request.getParameter("password");
if(name.equals("admin") && pwd.equals("123456")){
    session.setAttribute("username", name);
response.sendRedirect("manager.jsp");
}else
response.sendRedirect("login.jsp");
%>
