<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css" >
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
</head>
<body>
<table width=550 align=center>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
		<hr>
	<tr class="content">
		<td height=300 align=center >
			<table width=260 align=center>
			<div class="col-12 col-sm-6 col-md-3">
			<h2>會員登入</h2>
				<div href="#" class="card mb-3">
				<form action="../login" method="post">
					帳號<input type="text" name="user"><br>
					密碼<input type="password" name="password"><br>
					<input type="submit" value="ok" class="btn btn-outline-primary btn-block button">
					<a href="addmember.jsp" class="btn btn-outline-success btn-block button" >註冊會員</a></br>
			
				</div>
			</div>
		<div class="container">	
		<div class="alert alert-success alert-dismissible fade show">
   		 <button type="button" class="close" data-dismiss="alert">&times;</button>
   		 <strong>請先登入會員!</strong>
  		</div>
  		</div>
				</form>
			</table>
		
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
</body>
</html>