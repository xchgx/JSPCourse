<%-- 
    Document   : score
    Created on : 2020-10-16, 11:14:01
    Author     : 刘杰
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>成绩查询页</title>
		<style type="text/css">
			#main{
				
				height: 380px;
				width:300px;
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,0.5);
				border-radius: 4px;
			}
			.title{
				background: linear-gradient(0deg,rgba(31,130,210,1),rgba(31,130,201,0.4));
				/**
				 * background:rgba(31,130,201,1);
				 */
				height: 80px;
				text-align: center;
				font-size: 30px;
				line-height: 80px;
				color: rgba(250,250,250,1);
				font-weight: bolder;
				letter-spacing: 4px;
				font-family: "microsoft yahei";
			}
			.body{
				
				height: 300px;
				
			}
			.form{
				
				height: 200px;
				font-size: 18px;
				text-align: center;
			}
			.readme{
				
				height: 100px ;
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
					<form action="query.jsp" method="post">
						<div class="sep" ></div>
						<div class="xh">学号：<input type="text" name="xh"></div>
                                                <div class="xm">姓名：<input type="text" name="xm"></div>
					    <div class="cx"><input type="submit" value="查询"></div> 
					</form>
				</div>
				<div class="readme"><span class="red">说明</span><br>
				 此系统查询的信息是已经考试过的成绩，
				 <span class="red">未参加考试</span>的不显示出来
				 </div>
			</div>
			
		</div>
	</body>
</html>
