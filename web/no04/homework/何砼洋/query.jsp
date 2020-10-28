<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:27
    Author     : 何砼洋
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String xh = request.getParameter("xh");//获得表单中name为xh的值
    String xm = request.getParameter("xm");//获得表单中name为xm的值
    String[] xhs = {"20192071001", "20192071002", "20192071003"};//学号组
    String[] xms = {"张三", "李四", "王麻子"};//姓名数组
    String[] score = {"语文:80", "语文90", "语文100"};//语文成绩
    String findXh = "";//找到的学号
    String findXm = "";//知道的姓名
    String findScore = "";//知道的成绩
    boolean finded = false;//默认没有找到,设置为false
    for (int i = 0; i < xhs.length; i++) {//遍历数组
        String s = xhs[i];//获得
        String m = xms[i];//获得
        if (s.equals(xh) && xm.equals(xm)) {//如果数组中某个元素和学号相等
            //表示输入正确的学号正确
            finded = true;//修改标记已找到(true)
            findXh = xhs[i];//把对应的学号保存在findXh中
            findXm = xms[i];//把对应的姓名保存在findXm中
            findScore = score[i];//把对应的成绩保存在findScore中
        }
    }
    if (finded == false) {//如果没有找到,说明输入有误。
        //如果输入有误，直接转发到查询页面
//      request.getRequestDispatcher("score.jsp").forward(request, response);
        findXh = xh;
        findXm = "未找到（无此数据）";
        findScore = "查无此人：请核对后再试。";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
			/*css样式表 代码*/
			#main {
				/*background: rgba(255, 0, 0, 0.5);*/
				/*rgba(红色0-255,绿色0-255,蓝色0-255,透明度0-1)*/
				height: auto;
				/*默认为0*/
				width: 300px;
				/*默认无设置下宽度为100%*/
				/*块级标签居中*/
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,.5);
				border-radius: 4px;/*圆边边框*/
                                /*盒子阴影*/
                                box-shadow: 4px 4px 4px rgba(0,0,0,0.8);
			}

			.title {
				/*线性渐变背景色，参数：方向0-360度，起始颜色，终止颜色*/
				background: linear-gradient(
                                0deg,
				rgba(31, 130, 201, 1),
				rgba(31, 130, 201, .4));
				/*background: rgba(0,255,0,0.5);*/
				height: 80px;
				/*默认为0*/
				/* width: 300px;删除该属性，让它自适应*/
				/*下面是修改字体样式的css代码*/
				text-align: center;
				/*文本对齐：居中*/
				font-size: 40px;
				/*字体大小：30px*/
				/*字体垂直居中：调整行（line）高（height）与块级标签高度一致*/
				line-height: 80px;
				/*颜色（默认指的就是字体颜色）:白色*/
				color: rgba(255, 255, 255, 1);
				font-weight: bolder;
				/*字体加粗*/
				letter-spacing: 4px;
				/*字体间距：4px*/
				font-family: "microsoft yahei";
                                text-shadow:4px 4px 4px rgba(255,0,0,0.8);
                        }

			.body {
				/*background: rgba(0, 0, 255, .5);*/
				height: 300px;
                                padding: 16px;
			}

			.form {
				/*类选择器，选中那些class为form的所有标签*/
				/*background: rgba(255, 255, 0, .8);*/
				/*红+绿=黄*/
				height: 200px;
				font-size: 18px;
				text-align: center;
			}

			.readme {
				/*background: rgba(0, 0, 0, .5);*/
				height: 100px;
			}

			.xh {
				height: 60px;
			}

			/*学号层*/
			.xm {
				height: 60px;
			}

			/*姓名层*/
			.cx {
				height: 60px;
			}
			.red{
				color: rgba(255,0,0,1);
			}
			.baba{
				color: rgba(0,255,255,.5);
			}

			/*查询层*/
		</style>
    </head>
		<!--div#main<TAB> -->
		<div id="main">
			<!--最外层的div-->
			<!-- div.title -->
			<div class="title">成绩信息查询</div>
			<!--div.body-->
			<div class="body">
				<!-- div.form -->
                                <div style="height;10px;"></div>
				<div class="form">
				    <!-- 表单 输入form按回车 -->
					<table border="1" align="center" width="100%">
			            <caption>成绩查询结果</caption>
			        <tr>
				    <td>学号</td>
				    <td><%=findXh%></td>
			        </tr>
			        <tr><td>姓名</td><td><%=findXm%></td></tr>
			        <tr><td>成绩</td><td><%=findScore%></td></tr>
		</table>
				</div>
				<!-- div.readme -->
				<div class="readme"><span class="red">说明</span><br>
				此系统没毛病如有不适纯属自闭
                                <a href="score.jsp" target="_blank">点击返回，继续查询</a></div>
			</div>
		</div>
	</body>
</html>