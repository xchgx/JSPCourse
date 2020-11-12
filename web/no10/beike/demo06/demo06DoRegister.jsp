<%-- 
    Document   : demo06DoRegister
    Created on : 2020-11-12, 21:02:14
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
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("name");
            String gender = request.getParameter("gender");
            String age = request.getParameter("age");
            String email = request.getParameter("email");
            String college = request.getParameter("college");
            String[] hobby = request.getParameterValues("hobby");
            String s = "";
            if (hobby != null) {
                for (int i = 0; i < hobby.length; i++) {
                    s = s + hobby[i] + " ";
                }
            }
            String despt = request.getParameter("despt");
            out.print("姓名：" + name + "<br>");
            out.print("性别：" + gender + "<br>");
            out.print("年龄：" + age + "<br>");
            out.print("Email：" + email + "<br>");
            out.print("所在学院：" + college + "<br>");
            out.print("爱好：" + s + "<br>");
            out.print("说明：" + despt);
        %>
    </body>
</html>
