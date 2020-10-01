<%-- 
    Document   : idcard
    Created on : 2020-10-1, 21:33:12
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String sep = "-";
    String idcard = "320102200001014321";

    String getBirthday(String id) {
        return id.substring(6, 10) + sep + id.substring(10, 12) + sep + id.substring(12, 14);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>身份证号码识别</h1>
        <h2>身份证号码是：320102200001014321</h2>
        <table width="400" border="1" align="center">
            <tr>
                <td><div align="center">身份证</div></td>
                <td><div align="center">生日</div></td>
            </tr>
            <tr>
                <td><div align="center"><%= idcard%></div></td>
                <td><div align="center"><%= getBirthday(idcard) %></div></td>
            </tr>
        </table>
    </body>
</html>
