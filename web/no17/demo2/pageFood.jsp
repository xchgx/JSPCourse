<%-- 
    Document   : listFood
    Created on : 2020-12-3, 23:10:44
    Author     : 陈老师
--%>

<%@page import="no17.demo2.bean.Food"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String p = request.getParameter("p");
    int nn = 0;
    if (null != p && !p.isEmpty()) {
        nn = Integer.parseInt(p);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean  class="no17.demo2.FoodService" id="foodService" scope="session"></jsp:useBean>
        <%
            List<Food> foods = foodService.listFood();
            int currentPage = nn;//当前页
            int pageSize = 5;//每页几个
            int totalPage = foods.size() % pageSize == 0 ? foods.size() / pageSize : foods.size() / pageSize + 1;
            int begin = currentPage * pageSize;
            int end = (currentPage + 1) * pageSize > foods.size() ? foods.size() : (currentPage + 1) * pageSize;

        %>
        <table border="1">
            <tr><th>ID</th><th>名称</th><th>价格</th><th>介绍</th><th>图片</th></tr>
                    <%   for (int i = begin; i < end; i++) {
                            Food food = foods.get(i);%>
            <tr>
                <td><%=food.getId()%></td>
                <td><%=food.getName()%></td>
                <td><%=food.getPrice()%></td>
                <td><%=food.getDescription()%></td>
                <td><%=food.getImage()%></td>
            </tr>
            <%
                }
            %>
            <tr>
                <td align="center" colspan="5">
                    <%
                        for (int i = 0; i < totalPage; i++) {%>
                    <button  onclick="location.href = 'pageFood.jsp?p=<%=i%>'"><%=i%></button>
                    <%}%> 
                </td>
            </tr>
        </table>
    </body>
</html>
