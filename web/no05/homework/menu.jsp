<%-- 
    Document   : menu
    Created on : 2020-10-30, 11:16:57
    Author     : yuhaiyang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>导航菜单</title>
		<style type="text/css">
			#main {
				width: 650px;
			}

			#main .nav {
				float: left;
				width: 100px;
				height: 30px;
				line-height: 30px;
				text-align: center;
				color: white;
				font-weight: bold;
				/*background: rgba(200,0,0,0.5);*/
				margin-left: 1px;
				cursor: pointer;
				transition: all .5s;
			}

			#main .nav:hover {
				background: rgba(200, , 0, 0, 0.6);
				margin-top: -5px;
			}

			#main .nav a {
				color: white;
				text-decoration: none;
			}

			.red {
				background: rgba(200, 0, 0, 0.5);
			}

			.green {
				background: rgba(0, 200, 0, 0.5);
			}

			.blue {
				background: rgba(0, 0, 200, 0.5);
			}
		</style>
	</head>
	<body>
		<div id="main">
                    <%
                String index =request.getParameter("index");
                int idx =0;
                if(index!=null){
                       idx = Integer.parseInt(index);
                }
                        String[] menus ={"首页","分类浏览","热销产品","排行榜","联系我们","关于公司"};
                        for(int i=0; i<menus.length;i++){
                            if(i == idx){                                 
                            out.println("<div class=\"nav blue\"><a href=\"menu.jsp?index="+i+"\">");
                            out.println(menus[i]);
                            out.println("</a></div>");
                        }else{
                                     out.println("<div class=\"nav red\"><a href=\"menu.jsp?index="+i+"\">");
                            out.println(menus[i]);
                            out.println("</a></div>");
                                
                                }
                        }
                    
                    %>
		
		</div>
	</body>
</html>