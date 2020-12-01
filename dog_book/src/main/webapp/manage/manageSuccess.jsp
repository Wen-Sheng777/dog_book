<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.manage"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MS</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
</head>
<%
manage m=(manage)session.getAttribute("MM");

%>
<body>
<table width=550 align=center>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
		<hr>
	<tr class="content">
		<td height=200 align=center >
			
			<section class="page-content">
					<div class="col-12 col-md-12">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" id="opacity1" src="../img/p1.jpg" alt="Card image">
    					<div class="card-img-overlay">
      					<h3 class="text-success"><%=m.getName() %> 歡迎進入管理員操作介面</h3>
      					<p class="card-text">
                            
                <table width=300 align=center>
					<tr height=30>
						<td colspan=2 align=center >
						<a href="manageQueryMember.jsp"><h5>修改會員資料</h5></a>
					<tr height=30>
						<td colspan=2 align=center >
						<a href="manageDeleteMember.jsp"><h5>刪除會員資料</h5></a>
					<tr height=30>
						<td colspan=2 align=center >
						<a href="manageQueryOrder.jsp"><h5>修改會員訂單</h5></a>
					<tr height=30>
						<td colspan=2 align=center >
						<a href="manageDeleteOrder.jsp"><h5>刪除會員訂單</h5></a>
					<tr height=250>
						<td colspan=2 align=center >
						<a href="../index.jsp">回首頁</a>
				</table></h3>
                        </div>
     					</p>
    					</div>                         
                     </div>
            </section>
			
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
	
</body>
</html>