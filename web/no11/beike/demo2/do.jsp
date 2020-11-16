<%-- 
    Document   : do
    Created on : 2020-11-15, 22:50:57
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="sp" scope="page" class="no11.beike.Shangpin"></jsp:useBean>
        <jsp:setProperty name="sp" property="*"></jsp:setProperty>
    <center><p>品牌：<jsp:getProperty name="sp" property="brand"></jsp:getProperty></p></center>
    <center><p>数量：<jsp:getProperty name="sp" property="amount"></jsp:getProperty></p></center>
    <center><p>单价：<jsp:getProperty name="sp" property="price"></jsp:getProperty></p></center> 
</body>
</html>
