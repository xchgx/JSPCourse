<%-- 
    Document   : query
    Created on : 2020-10-16, 11:30:52
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
  String xh=request.getParameter("xh");
    String xm=request.getParameter("xm");
    String[] xhs={"2019001","2019002","2019003"};
        String[] xms={"张三","李四","王五"};
            String[] score={"语文80","数学90","语文70","英语88"};
            String findXh="";
            String findXm="";
            String findScore="";
            boolean finded=false;
for (int i = 0; i <xhs.length; i++) {
        String s=xhs[i];
        String m=xms[i];
        if (s.equals(xh) && m.equals(xm)) {//如果数组中某个元素和学号相等
            //表示输入的学号正确
            finded =true;
                findXh=xhs[i];
                  findXm=xms[i];
                    findScore=score[i];//把对应的成绩
            }
    }
if (finded==false) {//如果没找到，说明输入错误
        //request.getRequestDispatcher("score.jsp").forward(request, response);
        findXh=xh;
        findXm="未找到（无此数据）";
        findScore="查无此人，请核对后再试。";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>成绩查询页</title>
        
         <style type="text/css">
            /*CSS样式表 代码*/
            #main{/*最外层div*/
                /*background: rgba(255,0,0,0.5);*/
                /*rgba（红色0-255，绿色0-255，蓝色0-255，透明度0-1）*/
                height: 380px;/*默认为0*/
                width: 500px;/*默认为100%*/
                /*块级居中标签*/
                margin: 0 auto;
                border: 1px solid rgba(0,0,0,0.5);/*边框设置*/
                border-radius: 4px;/*圆角边框*/
                /*盒子阴影*/
                box-shadow: 4px 4px 4px rgba(0,0,0,0.8);
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
                
                
                text-shadow:2px 2px 1px rgba(10,10,10,0.7);
            }
            .body{
                /*background: rgba(0,0,255,0.8);*/
                height: 300px;
                padding: 16px;
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
            .cx{height: 60px;}/**/
            .red{color: rgba(255,0,0,1);}单独设置字体颜色
        </style>
        
    </head>
    <body>
        
          <div id="main">
            <div class="title">成绩信息查询</div>
            <div class="body">
                <div style="height: 10px"></div>
                <div class="from">
                  <!--表格标签 边框为1像素-->
			
                      <table border="1"align="center"vidth="100%">
                    
			<captaion>成绩查询结果</captaion>
			<tr><!--行-->
				<td>学号</td><!--表格列（单元格）-->
				<td><%=findXh%></td><!--表格列（单元格）-->
			</tr>
			<tr><td>姓名</td><td><%=findXm%>,<%=xm%></td></tr><!--行-->
			<tr><td>成绩</td><td><%=findScore%></td></tr><!--行-->
		</table>
                </div>
                <div class="readme"><span class="red">说明</span><br>
                    此系统查询的信息已经过考试过的成绩，<span class="red">未参加考试</span>的显示不出来
                  <br>
                    <a href="成绩查询.jsp"target="blank">点击返回，继续查询</a>
                </div>
            </div>
        </div>
    </body>
</html>
