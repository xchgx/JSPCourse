<%-- 
    Document   : demo3
    Created on : 2020-11-16, 23:08:48
    Author     : 陈老师
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>用户注册</title>
    </head>
    <body>
        <form action="" method="post" name="form1" onsubmit="return submit()">
            <input type="text" name="username" placeholder="请输入注册用户名" onblur="check()">
            <input type="password" name="password" placeholder="请输入注册密码" onblur="check()">
            <input type="password" name="password2" placeholder="请输入注册确认密码" onblur="check()">
            <input type="submit" name="submit" value="注册">
            <div id="result"></div>
        </form>
        <script>
            function check(){
                form1.submit.disabled = false;
                document.getElementById("result").innerHTML="<font color=green>请登录</font>";
                if(form1.username.value.length <6){
                    form1.submit.disabled = true;
                    document.getElementById("result").innerHTML="<font color=red>用户名长度不能小于6位</font>";
                }
                if(form1.password.value.length <6){
                    form1.submit.disabled = true;
                    document.getElementById("result").innerHTML="<font color=red>密码长度不能小于6位</font>";
                } 
                if(form1.password.value !== form1.password2.value){
                    form1.submit.disabled = true;
                    document.getElementById("result").innerHTML="<font color=red>两次输入的密码不一致</font>";
                }
            } 
        </script>
    </body>
</html>
