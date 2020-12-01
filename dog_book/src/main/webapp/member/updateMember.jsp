<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"
    import="Dao.memberDao"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATEMEMBER</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
function Update(){
	
		var b = window.confirm("您確認要修改嗎 ? ");
			if(b){
				window.location.href="updateMember";
			}
		
	}
</script>
</head>
<% 
member m=(member)session.getAttribute("M");
%>
<% member[] rs=new memberDao().query(m.getId());%>
<body>
<table width=550 align=center>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
		<hr>
	<tr class="content">
		<td height=300 align=center >
		<div class="container">
		<form action="../updateMember" method="post" class="form-inline">
			<table width=500 align=center>
			<div class="col-12 col-sm-6 col-md-3">
				<tr>
					<td colspan=2 align=center><h2>修改會員資料</h2>
				
					<div href="#" class="card mb-3">
				<tr>
					<td width=200 align=center>
					<td width=250 align=center><input type="hidden" name="id" value="<%=m.getId() %>">
				<tr>
					<td width=50 align=center>會員帳號:
					<td width=250 align=center><%=m.getUser()%><br>
					
				<tr>
					<td width=50 align=center>密碼:
					<td width=250 align=center><input type="password" name="password" value="<%=rs[0].getPassword() %>">
					<br>
				<tr>
					<td width=50 align=center>姓名:
					<td width=250 align=center><input type="text" name="name" value="<%=rs[0].getName() %>"><br>
				<tr>
					<td width=50 align=center>電話:
					<td width=250 align=center><input type="text" name="tel" value="<%=rs[0].getTel() %>"><br>
				<tr>
					<td><label for="email">Email:</label>
					<td width=250 align=center><input type="text" name="email" value="<%=rs[0].getEmail() %>"><br>
				<tr>
					<td width=50 align=center>地址:
					<td width=250 align=center><input type="text" name="address" value="<%=rs[0].getAddress() %>"><br>
				<tr>
					<td colspan=2 align=center>
					<input type="submit" value="提交" class="btn btn-outline-primary btn-block button"><br>
				</div>
				</div>
				
			</table>
		</form>
		</div>
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
	
</table>
</body>
</html>