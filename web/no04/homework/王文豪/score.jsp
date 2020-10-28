<%-- 
    Document   : score
    Created on : 2020-10-16, 11:13:18
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<style type="text/css">
			/*css样式表 代码*/
			#main{
				/* background:rgba(255,0,0,0.5); */
				height:380px;/*默认为0*/
				width:300px;
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,.5);/*边框设置*/
				border-radius: 4px;/*圆角边框*/
				padding: 4px;/*内部填充*/
			}
			.title{
				background:linear-gradient(
				0deg,
				rgba(31,130,201,1),
				rgba(31,130,201,.4));
				height:80px;
				/*下面是修改字体样式的css代码*/
				text-align: center;/*文本对齐：居中*/
				font-size: 30px;/*字体大小：30px*/
				/*字体垂直居中，调整行(line)高(hight)与块级标签高度一致*/
				line-height: 80px;
				color: rgba(250,250,250,1);
				font-weight: bolder;/*字体加粗*/
				letter-spacing:4px;/*字体间距*/
				font-family: "微软雅黑";
			}
			.body{
				/* background:rgba(0,0,255,0.5); */
				height:300px;
			}
			.form{
				/* background:rgba(255,255,0,0.8); */
				height:200px;
				font-size:18px;
				text-align: center;
			}
			.readme{
				/* background:rgba(0,0,0,0.5); */
				height:100px;
			}
			.sep{height: 30px;}
			.xh{height: 60px;}/*学号层*/
			.xm{height: 60px;}/*姓名层*/
			.cx{height: 60px;}/*查询层*/
			.red{color: rgba(255,0,0,1);}/*单独设置字体红色*/
		</style>
	</head>
	<body>
		<!--div#main<tab>-->
		<div id="main">
			<!--div.title<tab>-->
			<div class="title">成绩信息查询</div>
			<!--div.body      <tab>-->
			<div class="body">
				<div class="form">
					<form action="query.jsp" method="post">
						<div class="sep"><br></div>
						<div class="xh">学号：<input type="text" name="xh"><br></div>
						<div class="xm">姓名：<input type="text" name="xm"><br></div>
						<div class="cx"><input type="submit" value="查询"/></div>
					</form>
				</div>
				<div class="readme"><span class="red">说明<br>此系统查询的信息是已经考试过的成绩，未参加考试的不显示出来</div>
			</div>
		</div>
	</body>
</html>
