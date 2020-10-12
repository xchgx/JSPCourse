<%-- 
    Document   : login
    Created on : 2020-10-8, 1:01:39
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style type="text/css">
			body{
				height: 600px;
				/*width: 800px;*/
				background: radial-gradient(circle, rgba(7,76,141,.5),rgba(7,76,141,1)); 
				background-repeat: no-repeat;
				/* background-size: 100% 100%; */
			}
			#main{
				width: 300px;
				margin: 0 auto;
			}
			#main .loginframe{ 
				height: 300px;
				background: white;
				box-shadow: 1px 1px 1px rgba(0,0,0,0.5); 
				border-radius: 4px; 
			}
			#main .loginframe .title{
				height: 80px;
				background-image:  radial-gradient(circle, rgba(19,115,187,.8),rgba(19,115,187,1)); 
				box-shadow: inset 0px 1px 0px rgba(255,255,255,.2);
				text-align: center;
				font-size: 30px;
				line-height: 80px;
				color: white;
				text-shadow: 0px 1px 0px rgba(0,0,0,0.9);
			}
			#main .loginframe .body{
				padding: 30px;
			}
			#main .loginframe .readme{
				text-align: center;
				font-size: 12px;
				border-bottom: 1px solid rgba(0,0,0,0.1);
				/* width: 80%; */
				height: 20px; 
				margin: 0 auto;
				color: rgba(0,0,0,0.5);
			}
			#main .loginframe .field input{
				
				height: 30px;
				border-radius: 4px;
				border-width: 1px;
				background-image: radial-gradient(circle, red,white,red,white,rgba(255,0,0,.0));
				background-size: 32px 32px;
				background-repeat: no-repeat;
				padding-left: 40px;
			}
			#main .loginframe .name input{
				background-image: radial-gradient(circle, blue,white,blue,white,rgba(0,0,255,.0));
			}
			#main .loginframe .body .btn{
				height: 30px;
				/* background-color: red; */
			}
			#main .loginframe .btn input{
				margin-top: 10px;
				height: 40px;
				width: 100px;
				background: rgba(19,115,187,.6);
				border: 1px solid rgba(0,0,0,0.3);
				box-shadow: 1px 1px 1px rgba(0,0,0,0.9),inset 0px 1px 0px rgba(255,255,255,0.5);
				color: white;
				letter-spacing: 4px;
				text-align: center;
				font-size: 16px;
			}
		</style>
	</head>
	<body>
		<div id="main">
			<div class="hei" style="height: 80px;"></div>
			<div class="loginframe">
				<div class="title">后台管理系统</div>
				<div class="body">
                                    <form action="doLogin.jsp" method="post">
						<div class="readme">你好，请输入用户名和密码登录！</div>
                                                <div class="name">用户名(<%=request.getParameter("uname") %>)</div>
						<div class="name field"><input type="text" name="uname"></div>
						<div class="name">密码</div>
						<div class="pass field"><input type="password" name="upass"></div>
						<div class="btn"><input type="submit" value="登录"></div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
