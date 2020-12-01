<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="model.member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SUCCESS</title>
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
<table width=550 align=center>
	<tr id="head">
		<td height=150 align=center><jsp:include page="../head.jsp"/>
		<hr>
	<tr class="content">
		<td height=200 align=center >
			
			<section class="page-content">
					<div class="col-12 col-md-12">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" src="../img/p1.jpg" alt="Card image">
    					<div class="card-img-overlay">
      					<h2 class="text-success">登入成功!!</h2>
      					<p class="card-text">
                            <p class="mt-4"><h3>歡迎您 <%=m.getName() %>!!</h3></p>
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