<%-- 
    Document   : demo07DoCompute
    Created on : 2020-11-12, 21:09:28
    Author     : 陈老师
--%>

<%@page import="java.util.StringTokenizer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
            <%
                String clear = request.getParameter("clear");
                if (clear != null) {
                    session.setAttribute("thing", null);
                    out.print("无选购的商品！");
                } else {
                    String s = "";
                    String[] goods = request.getParameterValues("motor");//新购商品
                    if (goods != null) {
                        for (int i = 0; i < goods.length; i++) {
                            s = s + goods[i] + ",";
                        }
                    }
                    String purchased = (String) session.getAttribute("thing");//已购商品
                    if (purchased == null) {
                        purchased = s;
                    } else {
                        purchased = purchased + s;
                    }
                    session.setAttribute("thing", purchased);
                    float total = 0;//商品总价
//                    purchased = new String(purchased.getBytes("ISO8859-1"));
                    System.out.println(purchased);
                    StringTokenizer fenxi = new StringTokenizer(purchased, ",");
                    while (fenxi.hasMoreTokens()) {
                        String str1 = fenxi.nextToken();//商品名称
                        out.print(str1 + " ");
                        String str2 = fenxi.nextToken();//商品价格
                        out.print(str2 + "<br>");
                        total = total + Float.parseFloat(str2);
                    }
                    out.print("商品的总价格是：" + total + "<br>");
                }
            %>
        </p>
        <table width="200" border="0">
            <tr>
                <td><a href="demo07Car.jsp">继续购买</a></td>
                <td>
                    <form name="form" method="post" action="">
                        <label>
                            <input type="submit" name="clear" value="清空购物车">
                        </label>
                    </form>
                </td>
            </tr>
        </table>
    </body>
</html>
