<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table align=right>
	<tr>
		<td>
<div id="bookhead" class="bookheadbox">
	<div class="bookheadall" id="g_top">

		<div class="bookheadmenu">
			<div class="bookhead-top">
				<!--bookhead menu-->
				<ul class="bookhead_menu">
					<li class="bookhead_menu-item"><a href="${pageContext.request.contextPath}/member/login.jsp">會員中心</a>
						<ul class="bookhead_submenu">
							<li class="bookhead_submenu-item"><a href="${pageContext.request.contextPath}/test2.jsp">購物車</a></li>
							<li class="bookhead_submenu-item"><a href="${pageContext.request.contextPath}/query">查詢訂單</a></li>
							<li class="bookhead_submenu-item"><a href="${pageContext.request.contextPath}/loginUpdateMember">修改資料</a></li>
						</ul></li>
					<li class="bookhead_menu-item"><a href="${pageContext.request.contextPath}/ListBookServlet">書籍列表</a></li>
					<li class="bookhead_menu-item"><a href="${pageContext.request.contextPath}/index.jsp">首頁</a></li>
					<%
					member m=(member)session.getAttribute("M");
					if(m==null){
						
					%>
					<li class="bookhead_menu-item"><a href="${pageContext.request.contextPath}/member/login.jsp">登入 </a></a></li>
					<%
					}else{  
					%><li class="bookhead_menu-item-p">歡迎您! <%=m.getName() %></li>
					<li class="bookhead_menu-item"><a href="${pageContext.request.contextPath}/loginOut">登出 </a></a></li>
					<%
					}
					%>
					
				</ul>
			</div>
		</div>
		<!--=====bookhead menu end=====-->
		
		
	</div> 
	
</table>
<table align=center>
	<tr>
		<td>
		
		<a href="${pageContext.request.contextPath}/index.jsp">
			<IMG alt="index_book" src="${pageContext.request.contextPath}/img/mark2.png">
		</a>
	
</table>
	
</body>
<style>
	
	.bookheadbox{background:#2FABEE;height:40px;border-bottom:1px #fff solid;}
	.bookheadall{width:1000px;margin:0 auto;}
	.bookheadmenu{float:right;max-height:40px;}
	.bookhead-top{text-align:right;margin:0 auto;height:49px;color:#f0f0f0;z-index:2;position:relative;width:100%;font-family:"Meiryo", "Meiryo UI", "Microsoft JhengHei UI", "Microsoft JhengHei", sans-serif;}
	.bookhead-top a{display:block;padding:0px 5px;line-height:inherit;cursor:pointer;color:#fff;text-decoration:none;font-family:"Meiryo", "Meiryo UI", "Microsoft JhengHei UI", "Microsoft JhengHei", sans-serif;}
	.bookhead-top a:hover{color:#F5CCDE;text-decoration:none;font-family:"Meiryo", "Meiryo UI", "Microsoft JhengHei UI", "Microsoft JhengHei", sans-serif;}
	.bookhead_menu{line-height:45px;text-transform:uppercase;font-family:"Meiryo", "Meiryo UI", "Microsoft JhengHei UI", "Microsoft JhengHei", sans-serif;}
	.bookhead_menu-item{display:inline-block;position:relative;text-decoration:none;}
	.bookhead_menu-item-p{display:inline-block;position:relative;text-decoration:none;font-size:12px;}
	.bookhead_menu-item:hover{text-decoration:none;}
	.bookhead_menu-item:hover .bookhead_submenu{display:block;}
	.bookhead_submenu{ list-style:none; padding:10px;font-weight:300;text-transform:none;display:none;position:absolute;/*width:100px;*/background-color:#68C2F3;text-align:left;border-radius:5px;margin-left:-10px;}
	.bookhead_submenu-item{text-align:center;line-height:35px!important; white-space:nowrap;}

</style>

</html>