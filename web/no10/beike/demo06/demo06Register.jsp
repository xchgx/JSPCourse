<%-- 
    Document   : demo06
    Created on : 2020-11-12, 20:51:43
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
        <h2>学生个人信息调查表</h2>
        <form name="form" method="post" action="demo06DoRegister.jsp">
            <p>姓名：<input type="text" name="name" maxlength="12"></p>
            <p>性别： 
                <input type="radio" name="gender" value="男" checked="true"/>男
                <input type="radio" name="gender" value="女"/>女</p>
            <p>年龄：<select name="age">
                    <option value="23以上">23以上</option>
                    <option value="23">23</option>
                    <option value="22">22</option>
                    <option value="21">21</option>
                    <option value="20">20</option>
                    <option value="19">19</option>
                    <option value="18">18</option>
                    <option value="18以下">18以下</option>
                </select></p>
            <p>Email：<input type="text" name="email" size="30"/></p>
            <p>所在学院：<select name="college">
                    <option value="交通信息工程学院">交通信息工程学院</option>
                    <option value="运输管理工程学院">运输管理工程学院</option>
                    <option value="车辆工程学院">车辆工程学院</option>
                    <option value="路桥隧工程学院">路桥隧工程学院</option>
                    <option value="轨道交通工程学院">轨道交通工程学院</option>
                    <option value="建筑工程学院">建筑工程学院</option>
                </select></p>
            <p>爱好：
                <input type="checkbox" name="hobby" value="运动"/>运动
                <input type="checkbox" name="hobby" value="旅游"/>旅游
                <input type="checkbox" name="hobby" value="书画"/>书画
                <input type="checkbox" name="hobby" value="棋牌"/>棋牌
                <input type="checkbox" name="hobby" value="音乐"/>音乐
                <input type="checkbox" name="hobby" value="写作"/>写作</p>
            <p>说明：
                <textarea name="despt" rows="4" cols="40"></textarea></p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="提交"/>
                &nbsp;&nbsp;<input type="reset" name="reset" value="重置"/></p>
        </form>
    </body>
</html>
