<%-- 
    Document   : newjspdmeo1
    Created on : 2020-11-15, 22:50:21
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
        <form id="form" name="form" method="post" action="do.jsp">
            <center><p>品牌：<input type="text" name="brand"/></p></center>
            <center><p>数量：<input type="text" name="amount"/></p></center>
            <center><p>单价：<input type="text" name="price"/></p></center>
            <center><input type="submit" name="button" value="提交"/>&nbsp;&nbsp;
                <input type="reset" name="button" value="取消"/></center>
        </form>	
    </body>
</html>
