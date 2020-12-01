<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CONFIRM</title>
<link href="../css/st1.css" rel="stylesheet" type="text/css">
</head>
<%
member m=(member)session.getAttribute("M");

%>
<body>
<table width=550 align=center border=1>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
	<tr class="content">
		<td height=300 align=center >
			<table width=260 align=center>
					<tr>
						<td>帳號
						<td><%=m.getUser() %>
					<tr>
						<td>密碼
						<td><%=m.getPassword() %>
					<tr>
						<td>姓名
						<td><%=m.getName() %>
					<tr>
						<td>電話
						<td><%=m.getTel() %>
					<tr>
						<td>信箱
						<td><%=m.getEmail() %>
					<tr>
						<td>地址
						<td><%=m.getAddress() %>
					<tr>
						<td colspan=2 align=center>
						<a href="../OkAddMember">確定</a>
				
				
				</table>
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
	
</body>
</html>