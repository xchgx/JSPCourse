<%-- 
    Document   : jspinclude
    Created on : 2020-11-12, 18:22:27
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP动作元素</title>
        <style> 
            ul{
                list-style: none;
            }
            .active a{
                color:red;
            }
            a{
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <h1>包含</h1> 
        <jsp:include page="menu.jsp" flush="true">
            <jsp:param name="idx" value="1"></jsp:param>
        </jsp:include>
    </body>
</html>
