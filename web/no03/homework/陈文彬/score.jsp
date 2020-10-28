<%-- 
    Document   : newjsp
    Created on : 2020-10-16, 11:13:45
    Author     : 陈文彬
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<style type="text/css">
			#main{
				background: rgba(255,0,0,0,5);
				
				height: 380px;
				width: 300px;
				/*块级标签居中*/
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,0.5);
				border-radius: 4px;/*圆角边框*/
				padding: 10px;
			}
			.title{
				background:linear-gradient(
				0deg,
				rgba(31,130,201,1),
				rgba(31,130,201,.4));
				/*background: rgba(0,255,0,0.5);*/
				height:80px;
				text-align: center;/*文本对齐居中*/
				font-size: 30px;
				line-height: 80px;/*字体垂直居中*/
				/*color: white;color:()255,255,255,0.5*/
				font-weight: bolder;/*字体加粗*/
				letter-spacing: 4px;/*字体间距*/
				font-family: "microsoft yahei";/*微软雅黑*/
				
	}
	.body{
		background: rgba(0,0,255,0.8);
		height: 300px;
	}
	.form{
		background:rgba(255,255,0,0.8);
		height: 200px;
		font-size: 18px;
	text-align: center;
	}
	.readme{
		background: rgba(0,0,0,0.5);
		height: 100px;
	}
	;
	.sep{height: 30px;}
	.xh{height:60px;font-size:20px;}/**/
	.xm{height:60px;}
        .cx{height:60px;}
        .red{color:rgba(255,0,0,1);}/*单独设置字体红色*/
		</style>
	</head>
	<body>
		<div id="main"><!--最外层-->
		<div class="title">成绩信息查询</div>	
		<div class="body">
		  <div class="form"><!--输入form再按回车键-->
			<form action="query.jsp" method="post">
			<div class="sep"></div>
                        <div class="xh red">学号:<input type="text" name="xh"><br></div>
                        <div class="xm">姓名:<input type="text" name="xm"><br></div>
			<div class="cx"><input type="submit" value="查询"/></div>
			</form>
		  </div>
		  <div class="readme"><span="red">说明</span><br>
		  此系统查询的消息已经考试过的成绩，<span class="red">未参加考试</span>
		  </div>
		</div>
		</div>
	</body>
</html>

