<%-- 
    Document   : demo07
    Created on : 2020-11-12, 21:06:17
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
        <form name="form" method="post" action="demo07DoCompute.jsp">
            <table width = "482" height = "132" border = "1"  align="center">
                <tr>
                    <td width = "120" align = "center">商品</td>
                    <td width = "120" align = "center">价格</td>
                    <td width = "120" align = "center">是否购买</td>
                </tr>
                <tr>
                    <td width = "120"><div align = "center">哈雷</div></td>
                    <td width = "120"><div align = "center">8000</div></td>
                    <td width = "120"><div align = "center"><input type="checkbox" name="motor" value="Harley,8000"/></div></td>
                </tr>
                <tr>
                    <td width = "120"><div align = "center">雅马哈</div></td>
                    <td width = "120"><div align = "center">7000</div></td>
                    <td width = "120"><div align = "center"><input type="checkbox" name="motor" value="Yamaha,7000"/></div></td>
                </tr>
                <tr>
                    <td width = "120"><div align = "center">比亚乔</div></td>
                    <td width = "120"><div align = "center">6800</div></td>
                    <td width = "120"><div align = "center"><input type="checkbox" name="motor" value="Piaggio,6800"/></div></td>
                </tr>
                <tr>
                    <td colspan=3><center><input type="submit" name="submit" value="提交"/>
                    &nbsp;&nbsp;<input type="reset" name="reset" value="重置"/></center></td>
                </tr>
            </table>
        </form>	
    </body>
</html>
