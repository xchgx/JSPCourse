<%-- 
    Document   : shangpin
    Created on : 2020-11-12, 19:03:43
    Author     : 陈老师
--%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");%>
    <jsp:useBean id="sp" class="no09.Shangpin" scope="page"></jsp:useBean>
<jsp:setProperty name="sp" property="*"></jsp:setProperty>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        </head>

        <body>
            <div class="shangpin">
                <div class="pic"><img src="<jsp:getProperty name="sp" property="pic"></jsp:getProperty>"></div>
                <div class="body">
                    <div class="price"><jsp:getProperty name="sp" property="price"></jsp:getProperty></div>
                <div class="title"><jsp:getProperty name="sp" property="title"></jsp:getProperty></div>
                <div class="company"><jsp:getProperty name="sp" property="company"></jsp:getProperty></div>
                <div class="label"><jsp:getProperty name="sp" property="label"></jsp:getProperty></div>
            </div>
        </div>
    </body>
</html>
