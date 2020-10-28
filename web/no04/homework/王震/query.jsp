<%-- 
    Document   : query
    Created on : 2020-10-16, 11:36:47
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
 String xh = request.getParameter("xh");//获得表单中xh的值
 String xm = request.getParameter("xm");//获得表单中xm的值
 String[] xhs = {"20192071001","20192017002","20192071003"};//学号数组
 String[] xms = {"张三","李四","王五"};//姓名数组
  String[] score = {"语文：80","语文：90","语文：85"};//语文成绩数组
  String findXh ="";//找到学号
  String findXm ="";//找到姓名
  String findScore ="";//找到成绩
  boolean finded = false;//默认没找到，设置为false
  for (int i = 0; i <xhs.length; i++) {//遍历数组
            String s = xhs[i];//获得每个数组元素，临时保存变量s中
            String m = xms[i];
            if(s.equals(xh) && xm.equals(m)) {//如果数组中某个元素和学号相等
                //表示学号输入正确
                finded = true;//修改标记已找到true
                findXh = xhs[i];//把对应的学号保存在finXh中
                findXm = xms[i];//把对应的姓名保存在finXm中
                findScore = score[i];//把对应的成绩保存在finScorre中
            }
      }
  if(finded == false){//如果没找到，说明输入错误
//      request.getRequestDispatcher("score.jsp").forward(request, response);
     findXh = xh;//如果没有找到学号，
     findXm = "未找到（无此数据）";
     findScore = "查无此人，请核对后再试";
  }
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩查询结果页</title>
        
        
        
        
        <style type="text/css">
			/*CSS样式表 代码 */
				#main{
					
					height: 380px;
					width: 300px;
					margin: 0 auto;
					border:1px solid rgba(0,0,0,.5);/*边框设置*/			
					border-radius: 4px;/*圆角边框*/
                                        
					/*盒子阴影 * /
                                        
                                        
			}
			.title{
				background: linear-gradient(0deg,rgba(31,130,201,1),rgba(31,130,201,.4));
				height: 80px;/*默认为0*/
			text-align: center;
			
			font-size: 30px;/*字体大小：30px*/
			/*字体垂直居中，调整行(line)高(height)与块级标签高度一致*/
			line-height: 80px;
			/*颜色(默认指的就是字体颜色):白色*/
			color: rgba(255,255,255,1);
			font-weight: bolder;/*字体加粗*/
			letter-spacing: 4px;/*字体间距4像素*/
			font-family: "microsoft yahei";/*微软雅黑*/
			}
			.body{
				
				height: 300px;
				/*类选择器，选中那些class为form的所有标签*/
			}
			.form{
				
				height: 200px;
				font-size: 18px;
				text-align: center;
			}
			.readme{
				
				height: 100px;
			}
			.sep{height:40px;}
			.xh{height: 60px;}/**/
			.xm{height: 60px;}/**/
			.cx{height: 60px;}/**/
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
				 <table border="1"><!--表格标签，边框像素为1 -->
			<caption>成绩查询结果</caption>
			<tr>
				<td>学号</td>
				<td><%=findXh%></td>
			</tr>
			<tr><td>姓名</td><td><%=findXm%></td></tr>
			<tr><td>成绩</td><td><%=findScore%></td></tr>
		                 </table>
			</div> 
			 <div class="readme"><span class="red">说明</span><br>
                             此系统查询的信息是已经考试过的成绩，
                             <span class="red">未参加考试</span>的不显示出来</div>
                             
                             
                             <br>
                             <a href ="score.jsp" target="_blank">点击返回，继续查询</a>
	           </div>
		</div>
    </body>
</html>
