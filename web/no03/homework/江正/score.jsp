<%-- 
    Document   : score
    Created on : 2020-10-16, 11:17:03
    Author     : 江正                                                                                                                                                                                                                                                                                                             
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<style type="text/css">
			/*css样式表 代码*/
			#main {
				height: 380px;
				width: 300px;
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,.5);/*边框设置*/
				border-radius: 4px;/*圆角边框*/
			}

			.title {
				/*设置渐变色*/
				background: linear-gradient(0deg,rgba(31, 130,201,1),
				rgba(31,130,201,.1));
				height: 80px;
				/*下面是修改字体样式的css代码*/
				text-align: center;/*文本对齐，居中*/
				font-size: 30px;/*字体大小*/
				line-height: 80px;/*字体垂直居中，调整行高与块级标签*/
				color: rgba(255,255,255,1);/*颜色(默认指的是字体颜色:白色)*/
				font-weight: bolder;/*字体加粗*/
				letter-spacing: 4px;/*字体间距4像素*/
				font-family: "microsoft yahei";/*微软雅黑*/
			}

			.body {
				height: 300px;
			}

			.form {
				text-align: center;
				height: 200px;
				font-size: 16px;
			}

			.readme {
				height: 100px;
			}
			.sep{height: 20px;}/*隔离层*/
			.xh{height: 60px;}/*学号层*/
			.xm{height: 60px;}/*姓名层*/
			.cx{height: 60px;}/*查询层*/
			.red{color: rgba(255,0,0,1);}/*单独设置字体颜色红色*/
		</style>
	</head>
	<body>
		<div id="main">
			<!--最外层的div-->
			<div class="title">成绩信息查询</div>
			<div class="body">
				<div class="form">
					<form action="query.jsp" method="post">
						<div class="sep"></div>
						<div class="xh">学号：<input type="text" name = "xh"></div>
						<div class="xm">姓名：<input type="text" name = "xm"></div>
						<div class="cx"><input type="submit" value="查询"/></div>
					</form>
				</div>
				<div class="readme"><span class="red">说明</span><br>
				此系统查询的信息是已经考过的成绩,<span class="red">未参加考试</span>的不显示</div>
			</div>
		</div>
	</body>
</html>

