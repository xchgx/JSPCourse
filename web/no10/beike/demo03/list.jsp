<%-- 
    Document   : list
    Created on : 2020-11-12, 19:58:08
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .shangpin{
                float: left;
                width: 250px;
                height: 400px;
                border: 1px solid #dddddd;
                margin: 10px;
            }
            .shangpin .body{
                padding: 10px;
            }
            .shangpin .pic{
                height: 250px;
            }
            .shangpin .price{
                font-size: 20px;
                color: red;
                font-weight: bolder; 
                height: 40px;
                line-height: 40px;
            }
            .shangpin .title{
                font-size: 14px;
            }
            .shangpin .company{
                text-decoration: underline;
                color: #888;
                margin-top: 10px;
            }
            .shangpin .label{
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <div id="main">
            <% for (int i = 1; i <= 8; i++) { 
                String pic = "img\\tb0"+i+".png";
            %>  
            <jsp:include flush="true" page="shangpin.jsp">
                <jsp:param name="pic" value="<%=pic%>"></jsp:param>
                <jsp:param name="price" value="￥3.50"></jsp:param>
                <jsp:param name="title" value="小容量招投标U盘"></jsp:param>
                <jsp:param name="company" value="创意数码专营店"></jsp:param>
                <jsp:param name="label" value="掌柜热卖"></jsp:param>
            </jsp:include>
            <% }%>

        </div>    
    </body>
</html>
