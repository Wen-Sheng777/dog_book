<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030" isELIgnored ="false"
    import="model.member"%>
   <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="GB18030">
<title>CART</title>
<link href="css/st1.css" rel="stylesheet" type="text/css" >
<!-- CSS文件載入 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	function deleteitem(id){
		var b = window.confirm("您確認要刪除嗎 ? ");
		if(b){
			window.location.href="DeleteItemServlet?id="+id;
		}else{
			
		}
	}
	
	function clearcart(){
		var b = window.confirm("您確認要清空購物車嗎 ? ");
		if(b){
			window.location.href="ClearCartServlet";
		}
	}

	function Checkout(){
	
		var b = window.confirm("您確認要結帳嗎 ? ");
			if(b){
				window.location.href="CheckoutServlet";
			}
		
	}

	function changeQuantity(input,id,oldvalue){
		var quantity=input.value; //得到要修改的數量
		//檢查用戶輸入的值是不是一個數字
		/*
		if(isNaN(quantity)){
			alert("請輸入數字 ! ");
			input.value=oldvalue;
			
			return;
		}
		*/
		
		//檢查用戶輸入的值是不是一個正整數
		if(quantity<0 || quantity!=parseInt(quantity)){
			alert("請輸入正整數 ! ");
			input.value=oldvalue;
			
			return;
		}
		
		
		var b = window.confirm("您確認把書的數量修改為: " +quantity);
		if(b){
			window.location.href="ChangeQuantity?id="+id+"&quantity="+quantity;
		}
		
	}
	
	
</script>

</head>
<%
member m=(member)session.getAttribute("M");

%>
<body style="text-align:center">
<table width=550 align=center >
	<tr id="head">
		<td height=150 align=center><jsp:include page="head.jsp"/>
		<hr>
	<tr class="content">
		<td height=300 align=center >
		
		<div class="container">
		<h2>購物車列表</h2><br>
	
	<c:if test="${empty(cart.map) }">
		您沒有購買任何商品!!
	</c:if>
	
	<c:if test="${!empty(cart.map) }">
	<table width="70%"  class="table table-hover table-bordered table-striped text-center">
	<thead>
		<tr>
			<th>ID</th>
			<th>書名</th>
			<th>作者</th>
			<th>單價</th>
			<th>數量</th>
			<th>小計</th>
			<th>操作</th>
		</tr>
	</thead>
		<form action="CheckoutServlet" method="post" name='form'>
		<c:forEach var="entry" items="${cart.map }">
		<tr>
			<td>
				<input name="bookId" type="text" class="text-center" id="bookId" readonly="readonly" value="${entry.value.book.id}" style="width:35px">
			</td>
			<td align=center>${entry.value.book.name}</td>
			<td align=center>${entry.value.book.author}</td>
			<td align=center>${entry.value.book.price}</td>

			<td align=center>
				<input type="text" name="quantity" class="text-center" value="${entry.value.quantity}" style="width:55px" onchange="changeQuantity(this,${entry.key },${entry.value.quantity })">
			</td>
			<td>${entry.value.price}</td>

			<td align=center class="table-danger">
				<a href="javascript:void(0)" onclick="deleteitem(${entry.key})" class="text-primary">刪除</a>
			</td>

		</tr>

		</c:forEach>
		
		<tr>
			<td colspan="3"  class="table-warning">總價</td>
			<td colspan="2"  class="table-warning">
				<input type="text" class="text-center" readonly="readonly" name="Sum" value="${cart.price }">元
			</td>
			<td colspan="2"  class="table-warning">
				<a href="javascript:void(0)" onclick="clearcart()" class="text-danger">清空購物車</a>
			</td>
		</tr>
		<tr>
			<td colspan="7" align=center class="table-success">
				<input  type="submit" value="結帳" class="btn btn-outline-primary btn-lg button">
			</td>
		</tr>
	
		
	</table>
	</c:if>
	</form>
	
	</div>

	<tr class="end">
		<td height=100 align=center ><jsp:include page="end.jsp"/>
</table>

	
</body>
</html>