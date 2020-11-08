<%-- 
    Document   : cookieHistory
    Created on : 2020-11-8, 21:21:25
    Author     : Administrator
--%>

<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String search = request.getParameter("search");
    if (search != null) {
        search = URLEncoder.encode(search, "UTF-8");
        Cookie c = new Cookie(search, "ok");
        c.setMaxAge(120);
        response.addCookie(c);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie 历史记录</title>

    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="cookieHistory.jsp" method="post">
            搜索：<input type="text" value="" placeholder="请输入搜索关键字" name="search">
            <input type="submit" value="提交">
        </form>
        <div>
            <ol>
                <%
                    Cookie[] cookies = request.getCookies();
                    for (int i = 0; i < cookies.length; i++) {
                        out.println("<li>" + cookies[i].getName() + "</li>");
                    }
                %>
            </ol>

        </div>
    </body>
</html>
