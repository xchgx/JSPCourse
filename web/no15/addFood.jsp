<%-- 
    Document   : addFood
    Created on : 2020-11-26, 9:43:21
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>新增食品款式</h1>
        <form  action="/JSPCourse/AddFoodServlet" method="post">
            <table>
                <tr><td>食品ID</td><td><input type="text" name="id"></td></tr>
                <tr><td>食品名称</td><td><input type="text" name="name"></td></tr>
                <tr><td>食品价格</td><td><input type="text" name="price"></td></tr>
                <tr><td>食品说明</td><td><input type="text" name="description"></td></tr>
                <tr><td>图片</td><td><input type="text" name="image"></td></tr>
                <tr><td colspan="2"><input type="submit" value="添加新食品"></td></tr>
                <tr><td colspan="2"><%=session.getAttribute("error")==null?"":session.getAttribute("error") %></td></tr>
            </table>
        </form> 
    </body>
</html>
