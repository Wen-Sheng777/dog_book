<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"
    import="Dao.manageDao"
    import="java.sql.*"
    import="model.manage"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MQM</title>
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
	<table width=600 align=center>
		<tr id="head">
			<td height=150 align=center><jsp:include page="../head.jsp"/>
			<hr>
		
		<tr class="content">
			<td height=300 align=center valign=top>
			<h2>修改會員資料</h2><br>登入者:<%=m.getUser() %><br><br><br>
			<form action="../manageUpdateMember" method="post">
					<table width=50% align=center>
					
						<tr align=center>
							<td colspan=4 align=center>
							id <input type="text" name="id" style="width:35px">
							user <input type="text" name="user" size="5">
							password <input type="text" name="password" size="5">
						<tr align=center>
							<td>
							name <input type="text" name="name" size="5">
							<td>
							tel <input type="text" name="tel" size="5">
							<td>
							email <input type="text" name="email" size="5">
							<td>
							address <input type="text" name="address" size="5">
						<tr align=center>
							<td colspan=4 align=center>
							 <input type="submit" value="修改">		
					</table>
			</form>
		<table width=600 class="table table-hover table-bordered table-striped text-center">
		<tr>
		<td>
				<%
						member[] rs=new manageDao().query();
				
				out.println("<table width=700 align=center border=1>");
				
				out.println("<tr align=center><td>ID<td>user<td>password<td>name<td>tel<td>email<td>address");
				
				for(int i=0;i<rs.length;i++)
				{
					out.println("<tr align=center><td>"+rs[i].getId()+
									"<td>"+rs[i].getUser()+
									"<td>"+rs[i].getPassword()+
									"<td>"+rs[i].getName()+
									"<td>"+rs[i].getTel()+
									"<td>"+rs[i].getEmail()+
									"<td>"+rs[i].getAddress());
				}
				
				out.println("</table>");
				
				%>
				<a href="../index.jsp">回首頁</a>
		</td>
		</tr>
		</table>
		<tr class="end">
			<td height=100 align=center><jsp:include page="../end.jsp"/>
	
	
	</table>
</body>
</html>