<%-- 
    Document   : demo04DoForward
    Created on : 2020-11-12, 20:37:58
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String key = request.getParameter("key");
    if (key.equals("5201314")) {
%>
<jsp:forward page="success.jsp"></jsp:forward>
<% }else{%>
<jsp:forward page="fail.jsp"></jsp:forward>
<% }%>