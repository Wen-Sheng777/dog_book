<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    import="model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOK</title>
<link href="css/st1.css" rel="stylesheet" type="text/css" >
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
</head>
<%
member m=(member)session.getAttribute("M");

%>
<body>

<table width=550 align=center>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
		<hr>
	
	<tr class="content">
		<td height=300 align=center >
		<h2>書籍列表</h2><br>
	<table class="table table-hover table-bordered table-striped text-center">
	<tr>
	<td>
		 <%
	           
					product[] s=new productDao().query();
					
					out.println("<table width=600 align=center border=1>");
					
					out.println("<tr align=center><td>id<td>書名<td>作者<td>售價<td>描述<td>剩餘數量<td>操作");
				//int i=0;
					
					for(int i=0;i<s.length;i++)
					//while(true)
					
					{
						
						out.println("<tr align=center><td>"+s[i].getId()+
										"<td>"+s[i].getName()+
										"<td>"+s[i].getAuthor()+
										"<td>"+s[i].getPrice()+
										"<td>"+s[i].getDescription()+
										"<td>"+s[i].getQuantity());
						
		%>
	<td>
	<a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[i].getId() %>" target="_blank" >購買</a>
	
	</td>
	<% 
	
		//i++;
					}
					
						out.println("</table>");
				
	%>
	</tr>
	</table>
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
	
</body>
</html>