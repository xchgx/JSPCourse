<%-- 
    Document   : score
    Created on : 2020-10-16, 11:12:37
    Author     :江佳豪
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>成绩查询页</title>
		<!--输入 style按回|车-->
		<style type="text/css">
			/*CSS样式表 代码*/
			#main{
			    /*background: rgba(255,0,0,0.5);*/
			    /*rgba（红色0~255，绿色0~255，蓝色0~255，透明度0~1）*/
			    height: 380px;/*默认为0*/
			    width: 300px;/*默认为100%*/
				/*块级标签居中*/
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,0.5);/*边框设置*/
				border-radius: 4px;/*圆角边框*/
			}
			.title{   
				/*线性渐变背景色，参数：方向0~360度，起始颜色，终止颜色*/
				background:linear-gradient(0deg,
				rgba(31,130,201,1),
				rgba(31,130,201,0.4));
				/*background: rgba(31,130,201,1);*/
				height: 80px;/*默认为0*/
				/*width: 300px;删除该属性。让它自适应（跟随）父类*/
				/*下面是修改字体样式的CSS代码*/
				text-align: center;/*文本对齐：居中*/
				font-size: 30px;/*字体大小：20px*/
				/*字体垂直居中，调整行（line）高（height）与块级标签高度一致*/
				line-height: 80px;
				/*颜色（默认指的就是字体颜色）：白色*/
				color:rgba(250,250,250,1);
				font-weight: bolder;/*字体加粗*/
				letter-spacing: 4px;/*字体间距:4px*/
				font-family: "microsoft yahei";/*设置微软雅黑字体*/
			}
			.body{
				/*background: rgba(0,0,255,0.6);*/
				height: 300px;
			}
			.form{/*类选择器，选中那些class为form的所有标签*/
				/*background: rgba(255,255,0,0.8);/*红+绿=黄*/
				height: 200px;
				font-size: 18px;
				text-align: center;
			}
			.redme{
				/*background: rgba(0,0,0,0.5);*/
				height: 100px;
			}
			.sep{height:30px;}/*用来充当隔离层*/
			.xh{height:60px;}/*学号层*/
			.xm{height:60px;}/*姓名层*/
			.xc{height:60px;}/*查询层*/
			.red{color:rgba(255,0,0,1)}
		</style>
	</head>
	<body>
		<!-- div#main<TAB> -->
		<div id="main"><!-- 最外层的div -->
		     <!-- div.titie<TAB> -->
		    <div class="title">成绩信息查询</div>
		    <!-- div.body<TAB> -->
		    <div class="body">
		    	 <!-- div.form<TAB> -->
		         <div class="form">
		         	<!-- 表单 输入form按回车 -->
		         	<form action="query.jsp" method="post">
		         		<div class="sep"></div>
		         		<div class="xh">学号:<input type="text" name="xh"></div>
		         		<div class="xm">姓名:<input type="text" name="xm"></div>
		         		<div class="cx"><input type="submit" value="查询"/></div>
		         	</form>
		         </div>
		         <!-- div.redme<TAB> -->
		         <div class="redme"><span class="red">说明</span>:<br>
		                  此系统查询的信息是已经考试过的成绩，
		          <span class="red">未参加考试</span>的不显示出来。
		         </div>
		    </div>
		</div>
	</body>
</html>
