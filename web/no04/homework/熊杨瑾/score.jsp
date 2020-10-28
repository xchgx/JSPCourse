<%-- 
    Document   : score
    Created on : 2020-10-16, 11:13:12
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
			#main{/* 最外层div */
				/* background: rgba(255,0,0,0.5); */
				height: 380px;/* 默认为0 */
				width: 300px;/* 默认100% */
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,.5);
				border-radius: 4px;
				padding: 4px;
				
			}
			.title{
				background:linear-gradient(
				0deg,
				rgba(31,130,201,1),
				rgba(31,130,201,.4));
				/* background: rgba(0,255,0,0.5); */
				height: 80px;
				text-align: center;/* 居中 */
				font-size: 30px;
				line-height: 80px;
				color: rgba(255,255,255,1);
				font-weight: bolder;/* 字体加粗 */
				letter-spacing: 4px;/* 字体间距 */
				font-family: "microsoft yahei";
			}
			.body{
				/* background: rgba(0,0,255,0.5); */
				height: 300px;
			}
			.form{
				/* background: rgba(255,255,255,0.5); */
				height: 200px;
				font-size: 18px;
				text-align: center;
			}
			.readme{
				/* background: rgba(0,0,0,0.5); */
				height: 100px;
			}
			.sep{height: 30px;}/* 用来充当隔离层 */
			.xh{height: 60px;}/* 学号层 */
			.xm{height: 60px;}/* 姓名层 */
			.cx{height: 60px;}/* 学号层 */
			.red{color: rgba(255,0,0,1);}
		</style>
	</head>
	<body>
		<div id="main"><!-- 最外层div -->
			<div class="title">成绩信息查询</div><!-- 上 -->
			<div class="body"><!-- 下 -->
				<div class="form">
			    <form action="query.jsp" method="post">
			    	<div class="sep"></div>
					<div class="xh"> 学号：<input type="text" name="xh"/></div>
					<div class="xm red">姓名：<input type="text" name="xm"/></div>
			    	<div class="cx"><input type="submit" value="查询"/></div>
			    </form>
				</div><!-- 里层上 -->
				<div class="readme"><span class="red">说明</span><br>
				<div class="red">此系统查询的信息是已经考试过的成绩，未参加考试的显示不出来。</div></div><!-- 里层下 -->
			</div><!-- 下 -->
		</div><!-- 最外层div -->
	</body>
</html>

