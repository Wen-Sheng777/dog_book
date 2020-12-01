<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OK</title>
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
		<div class="col-12 col-md-6">
        <div class="card img-fluid" style="width:500px">
    	<img class="card-img-top" id="opacity"  src="../img/b1.jpg" alt="Card image" style="width:100%">
    	<div class="card-img-overlay">
      		<h3 class="mb-3 title-color">訂購完成!!</h3>
        </div>
     				
    	</div>
 		</div>	
	<tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
	
</body>
</html>