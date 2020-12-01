<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OK</title>
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
					<td height=400 align=center> 會員資料修改成功!!
			</table>
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
	
</body>
</html>