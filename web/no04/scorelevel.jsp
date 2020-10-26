<%-- 
    Document   : scorelevel
    Created on : 2020-10-26, 19:58:32
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String f = request.getParameter("f");
    int score = 0;
    if (f != null) {
        score = Integer.parseInt(f);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>判断分数等级</h1>
        <form action="scorelevel.jsp">
            请输入分数:<input value="0" type="text" name="f">
            <input type="submit" value="查询分数等级">
        </form>
        <%
            String level = "E";
            if(score<60){
                level = "E";
            }else if(score<70){
                level = "D";
            }else if(score<80){
                level = "C";
            }else if(score<90){
                level = "B";
            }else{
                level = "A";
            }
        %>
        <%if(f!=null){%>
           你查询的分数等级为: <%=level%> 级
        <%}%>
    </body>
</html>
