<%-- 
    Document   : menu
    Created on : 2020-11-12, 18:22:57
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String idx = request.getParameter("idx");
    int xz=0;
    if (idx == null || idx.isEmpty()) {
        xz = 0;
    }
    xz = Integer.parseInt(idx);
    String[] menus = {"首页", "热点", "排行"};
%> 
<ul>
    <%
        for (int i = 0; i < menus.length; i++) {
            if (i == xz) {
                out.print("<li class='active'>");
            } else {
                out.print("<li>");
            }
            out.println("<a href='jspinclude.jsp?idx=" + i + "'>"+menus[i] + "</a></li>");
        }
    %> 
</ul>  