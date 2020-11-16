<%-- 
    Document   : book
    Created on : 2020-11-15, 23:26:01
    Author     : 陈老师
--%>

<%@page import="no11.beike.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="m" scope="session" class="no11.beike.BookManager"></jsp:useBean>
        <jsp:useBean id="b" scope="request" class="no11.beike.Book"></jsp:useBean>
        <jsp:setProperty name="b" property="*"></jsp:setProperty>
        <%
            m.getBooks().add(b);
        %>
        已选定书籍：
        <%
            for (int i = 0; i < m.getBooks().size(); i++) {
                    Book book = m.getBooks().get(i);
                    out.println("<div>---------------------------------</div>");
                    out.println("<div>"+book.getIsbn()+"</div>");
                    out.println("<div>"+book.getAuthor()+"</div>");
                    out.println("<div>"+book.getPrice()+"</div>");
                }
        %>
    </body>
</html>
