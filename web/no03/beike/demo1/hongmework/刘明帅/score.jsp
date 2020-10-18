<%-- 
    Document   : score.jsp
    Created on : 2020-10-16, 11:22:41
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<mata charset="utf-8">
		<title></title>
	<style type="text/css">
		#main{
			background:rgba(255,0,0,0.5);
			height:380px;
			width: 300px;
			margin: 0,auto;
			border: 1px solid rgba(0,0,0,.5);
			border-radius: 4px;
			padding: 10px;
			}
			.title{
				background: linear-gradient(0deg,rgba(31,130,201,1),rgba(31,130,201,.4));
			/* background:rgba(0,255,0,0.5); */
			height:80px;
			text-align: center;
			font-size: 30px;
			line-height: 80px;
			color: rgba(250,250,250,1);
			font-weight: bolder;
			letter-spacing: 4px;
			font-family: "microsoft yahei";
			}
			.body{
			background:rgba(0,0,255,0.5);
			height:300px;
			}
			.form{
			background:rgba(255,255,0,0.8);
			height:200px;
			font-size: 18px;
			text-align: center;
			}
			.readme{
			background:rgba(0,0,0,.5);
			height:100px;
			}
			.sep{height: 30px;}
			.xh{height: 60px;}
			.xm{height: 60px;}
			.cx{height: 60px;}
			.red{color: rgba(255,0,0,1);}
		</style>
	</head>
	<body>
		<div id="main">
		<div class="title">成绩信息查询</div>
		<div class="body">
         <div class="form">
	    <form action="query.jsp"method="post">
			<div class="sep"></div>
			<div class="xh">学号：<input type="text"></div>
			<div class="xm">姓名：<input type="text"></div>
			<div class="cx"><input type= "submit"value="查询"/></div>
			</form>
			</div>
			<div class="readma">说明<br>此系统查询的信息是考试过的成绩，<br>未参加考试的不显示出来</div>
		</div>
		</div>
	</body>
</html>
