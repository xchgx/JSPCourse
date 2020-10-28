<%-- 
    Document   : query
    Created on : 2020-10-16, 11:31:38
    Author     : 江佳豪
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");//设置请求对象的编码为UTF-8
    String xh = request.getParameter("xh");//获得表单中name为xh的值
    String xm = request.getParameter("xm");//获得表单中nme为xm的值
    String[] xhs = {"20192071001","20192071002","20192071003"};//学号数组
    String[] xms = {"张三","李四","王五"};//姓名数组
    String[] score = {"语文:80","语文90","语文:100"};//语文成绩
    String findXh = "";//找到的学号 
    String findXm = "";//找到的姓名
    String findScore = "";//找到的成绩
    boolean finded = false;//默认没有找到，设置为false
    for (int i = 0; i < xhs.length; i++) {//遍历数组
            String s = xhs[i];//获得每个数组元素，保存在临时变量s中
            String m = xms[i];//从姓名数组中获得相对应的姓名元素保存在临时变量s中
            if(s.equals(xh) && m.equals(xm)){//如果数组中某个元素和学号相等
                //表示输入的学号正确
                finded = true;//修改标记为已找到（true）
                findXh = xhs[i];//把对应的学号保存在findXh中
                findXm = xms[i];//把对应的姓名保存在findXm中
                findScore = score[i];//把对应的成绩保存在findScore中
            }
        }
    if (finded == false) {//如果没有找到，说明输入错误
        //如果输入有误，直接转发到查询页面
//            request.getRequestDispatcher("score.jsp").forward(request, response);
    findXh = xh;//如果没有找到学号，就把页面传递过来的学号，作为我们显示的内容
    findXm = "未找到（无此数据）";//
    findScore = "查无此人，请核对后再试！";
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩查询结果页</title>
               <!--输入 style按回车-->
                <style type="text/css">
			/*CSS样式表 代码*/
			#main{
			    /*background: rgba(255,0,0,0.5);*/
			    /*rgba（红色0~255，绿色0~255，蓝色0~255，透明度0~1）*/
			    height: auto;/*默认为0，原来是380，auto是自适应*/
			    width: 300px;/*默认为100%*/
				/*块级标签居中*/
				margin: 0 auto;
				border: 1px solid rgba(0,0,0,0.5);/*边框设置*/
				border-radius: 4px;/*圆角边框*/
                                /*盒子阴影*/
                                box-shadow: 4px 4px 4px rgba(0,0,0,0.8);
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
                                
                                text-shadow: 0px 2px 1px rgba(10,10,10,0.7);/*右边0*，下边1px，模糊1px，灰色*/
			}
			.body{
				/*background: rgba(0,0,255,0.6);*/
				height: 300px;
                                padding: 16px;/*内边距*/
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
                        .blue{color:rgba(0,0,255,1);
                             font-family:"宋体"}
		</style>
    </head>
    <body>
                    <!-- div#main<TAB> -->
		    <div id="main"><!-- 最外层的div -->
		    <div class="title">成绩信息查询结果</div>
		    <div class="body">
                        <div style="height: 10px"></div>
		    <div class="form">
		         	
                 <table border="2"  align="center" width="100%"> <!-- 表格标签 边框为1像素 -->
			<!--<caption>成绩查询结果</caption>-->
			<tr><!-- 行 -->
				<td>学号</td><!-- 表格列（单） -->
				<td><%=findXh%></td><!-- 表格列（单） -->
			</tr>
			<tr><td>姓名</td><td><%=findXm%>,<%=xm%></td></tr><!-- 行 -->
			<tr><td>成绩</td><td><%=findScore%></td></tr><!-- 行 -->
		</table>
		    </div>
		         <!-- div.redme<TAB> -->
		    <div class="redme"><span class="red">说明</span>:<br>
		                  此系统查询的信息是已经考试过的成绩，
		    <span class="red">未参加考试</span>的不显示出来。
                    
                    <br>
                    <a href="score.jsp" target="_blank"><span class="blue">点击返回，继续查询</span></a>
		        </div>
		    </div>
	    </div>
    </body>
</html>
