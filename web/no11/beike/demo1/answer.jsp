<%-- 
    Document   : tiku
    Created on : 2020-11-12, 20:47:09
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
        <jsp:useBean id="q" scope="request" class="no11.beike.Question"></jsp:useBean>
        <jsp:setProperty name="q" property="*"></jsp:setProperty> 
        <div>第一题：<%=q.isRightByNo1()?"√":"X" %></div>
        <div>第一题：<%=q.isRightByNo2()?"√":"X" %></div>
            <div>你得了<%=q.getCountRight() %>分</div>
    </body>
</body>
</html>
