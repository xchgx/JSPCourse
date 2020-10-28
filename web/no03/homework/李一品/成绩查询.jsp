<%-- 
    Document   : 成绩查询
    Created on : 2020-10-16, 11:26:39
    Author     : 李一品
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<style type="text/css">
			/*CSS样式表 代码*/
			#main{/*最外层div*/
				/*background: rgba(255,0,0,0.5);*/
				/*rgba（红色0-255，绿色0-255，蓝色0-255，透明度0-1）*/
				height: 380px;/*默认为0*/
				width: 300px;/*默认为100%*/
				/*块级居中标签*/
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,0.5);/*边框设置*/
				border-radius: 4px;/*圆角边框*/
			}
			.title{
				/*线性渐变背景色，参数：方向0-360度，起始颜色，终止颜色*/
				background: linear-gradient(0deg,rgba(31,130,201,1),rgba(31,130,201,0.4));
				/*background: rgba(0,255,0,0.5);*/
				height: 80px;/*默认为0*/
				/*width: 300px;*/
				text-align: center;
				font-size: 30px;
				/*字体垂直居中：调整行（line）高（height）与块级标签*/
				line-height: 80px;
				/*颜色（默认指的就是字体颜色）；白色*/
				color: rgba(255,255,255,1);
				font-weight: bolder;/*字体加粗*/
				letter-spacing: 4px;/*字体间距：4px*/
				font-family: "microsoft yahei";/*微软雅黑*/
			}
			.body{
				/*background: rgba(0,0,255,0.8);*/
				height: 300px;
			}.from{
				/*background: rgba(255,255,0,0.8);*/
				height: 200px;
				font-size: 18px;
				text-align: center;
			}.readme{
				/*background: rgba(0,0,0,0.5);*/
				height: 100px;
			}
			.sep{height: 40px;}
			.xh{height: 60px;font-size: 20px;}/**/
			.xm{height: 60px;font-size: 20px;}/**/
			.cx{height: 60ox;}/**/
			.red{color: rgba(255,0,0,1);}单独设置字体颜色
		</style>
	</head>
	<body>
	<div id="main">
		<div class="title">成绩信息查询</div>
			<div class="body">
				
			<div class="from">
				<form action="query.jsp"method="post">
					<div class="sep"></div>
					<div class="xh">学号：<input type="text"name="xh"></div>
					<div class="xm">姓名：<input type="text"name="xm"></div>
					<div class="cx"><input type="submit"value="查询"/></div>
				</form>
			</div>
			<div class="readme"><span class="red">说明</span><br>
			此系统查询的信息已经过考试过的成绩，<span class="red">未参加考试</span>的显示不出来</div>
			</div>
		
	</div>
	
	</body>
</html>

