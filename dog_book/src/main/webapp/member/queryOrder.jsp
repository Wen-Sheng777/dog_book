<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"
    import="Dao.porderDao"
    import="java.sql.*"
    import="model.porder"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QUERYORDER</title>
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
	member m=(member)session.getAttribute("M");
%>
<body>
	<table width=600 align=center>
		<tr id="head">
			<td height=150 align=center><jsp:include page="../head.jsp"/>
			<hr>
		
		<tr class="content">
			<td height=300 align=center valign=top>
			<h2>查詢訂單</h2><br>
		<table width=600 class="table table-hover table-bordered table-striped text-center">
		<tr>
		<td>
				<%
						porder[] rs=new porderDao().query(m.getName());
				
				out.println("<table width=700 align=center border=1>");
				
				out.println("<tr align=center><td>ID<td>名字<td>javaweb開發<td>jdbc開發<td>ajax開發<td>struts2開發<td>spring開發<td>總和");
				
				for(int i=0;i<rs.length;i++)
				{
					out.println("<tr align=center><td>"+rs[i].getId()+
									"<td>"+rs[i].getName()+
									"<td>"+rs[i].getProduct1()+
									"<td>"+rs[i].getProduct2()+
									"<td>"+rs[i].getProduct3()+
									"<td>"+rs[i].getProduct4()+
									"<td>"+rs[i].getProduct5()+
									"<td>"+rs[i].getSum());
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