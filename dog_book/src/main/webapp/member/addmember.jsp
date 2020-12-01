<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADDMEMBER</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
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
		<div class="col-12 col-sm-6 col-md-6">
		<div href="#" class="card mb-3">
		<form action="../add" method="post">
			<table width=260 align=center>
			
				<tr>
					<td colspan=2 align=center><h2>會員註冊</h2>
				<tr>
					<td width=50 align=center>帳號:
					<td width=250 align=center><input type="text" name="user" placeholder="Enter user"><br>
				<tr>
					<td width=50 align=center>密碼:
					<td width=250 align=center><input type="password" name="password" placeholder="Enter password"><br>
				<tr>
					<td width=50 align=center>姓名:
					<td width=250 align=center><input type="text" name="name" placeholder="Enter name"><br>
				<tr>
					<td width=50 align=center>電話:
					<td width=250 align=center><input type="text" name="tel" placeholder="Enter tel"><br>
				<tr>
					
					<td><label for="email">Email:</label>
					<td width=250 align=center><input type="text" name="email" placeholder="Enter email"><br>
				<tr>
					<td width=50 align=center>地址:
					<td width=250 align=center><input type="text" name="address" placeholder="Enter address"><br>
				<tr>
					<td colspan=2 align=center>
					<input type="submit" value="提交" class="btn btn-outline-primary btn-block"><br>
			</table>

		</form>
				</div>
			</div>
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
	
</table>
</body>
</html>