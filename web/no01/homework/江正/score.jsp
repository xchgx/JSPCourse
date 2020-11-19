<%-- 
    Document   : newjsp
    Created on : 2020-10-16, 11:30:03
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<!-- 输入style按回车 -->
		<style type="text/css">
			/*CSS样式表 代码 */
				#main{
				/*	background: rgba(255,0,0,0.5);*/
					height: 380px;
					width: 300px;
					margin: 0 auto;
					border: 1px solid rgba(0,0,0,.5);/*边框设置*/
					border-radius: 4px ;/*圆角板框*/
					
			}
			.title{
				background: linear-gradient(0deg,
				rgba(31,130,201,1),
				rgba(31,130,201,.4));
				height: 80px;/*默认为0*/
			text-align: center;
			/*字体大小：20px*/
			font-size: 30px;
			/*字体垂直居中，调整行(line)高(height)与块级标签高度一致*/
			line-height: 80px;
			/*颜色(默认指的就是字体颜色):白色*/
			color: rgba(255,255,255,1);
			font-weight: bolder;/*字体加粗*/
			letter-spacing: 4px;/*字体间距4像素*/
			font-family: "Times NEW Roman";/*微软雅黑*/
			}
			.body{
				/*background: rgba(0,0,255,0.5);*/
				height: 300px;
				/*类选择器，选中那些class为form的所有标签*/
			}
			.form{
				/*background: rgba(0,255,235,0.5);*/
				height: 200px;
				font-size: 18px;
				text-align: center;
			}
			.readme{
				/*background: rgba(0,0,0,.5);*/
				height: 100px;
			}
			.sep{height: 30px;}
			.xh{height:  60px;}/*学号层*/
			.xm{height:  60px;}/*姓名层*/
			.cx{height:  60px;}/*查询层*/
			.red{color: rgba(255,0,0,1);}
		</style>
	</head>
	<body>
		<!-- div#main<TAB> -->
		<div id="main">
			<!--div.title -->
			<div class="title">成绩信息查询</div>
			<!--div.body -->
			<div class="body">
			 <div class="form">
				 <form action="query.jsp" method="post">
					 <div class="sep"></div>
					<div class="xh">学号:<input type="text" name="xh"></div>
				    <div class="xm ">姓名:<input type="text" name="xm"></div>
					<div class="cx"><input type="submit" value="查询"/></div>
				 </form>
			 </div>
			 <div class="readme"><span class="red"j>说明</span><br>
				 此系统查询的信息是已经考试过的成绩，
				 <span class="red">未参加考试</span>的不显示出来</div>
	             </div>
		  </div>
	 </body>
  </html>
