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
<!-- CSS�ļ��d�� -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">
    <!-- js�ļ��d�� -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	function deleteitem(id){
		var b = window.confirm("���_�JҪ�h���� ? ");
		if(b){
			window.location.href="DeleteItemServlet?id="+id;
		}else{
			
		}
	}
	
	function clearcart(){
		var b = window.confirm("���_�JҪ���ُ��܇�� ? ");
		if(b){
			window.location.href="ClearCartServlet";
		}
	}

	function Checkout(){
	
		var b = window.confirm("���_�JҪ�Y���� ? ");
			if(b){
				window.location.href="CheckoutServlet";
			}
		
	}

	function changeQuantity(input,id,oldvalue){
		var quantity=input.value; //�õ�Ҫ�޸ĵĔ���
		//�z���Ñ�ݔ���ֵ�ǲ���һ������
		/*
		if(isNaN(quantity)){
			alert("Ոݔ�딵�� ! ");
			input.value=oldvalue;
			
			return;
		}
		*/
		
		//�z���Ñ�ݔ���ֵ�ǲ���һ��������
		if(quantity<0 || quantity!=parseInt(quantity)){
			alert("Ոݔ�������� ! ");
			input.value=oldvalue;
			
			return;
		}
		
		
		var b = window.confirm("���_�J�ѕ��Ĕ����޸Ğ�: " +quantity);
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
		<h2>ُ��܇�б�</h2><br>
	
	<c:if test="${empty(cart.map) }">
		���]��ُ�I�κ���Ʒ!!
	</c:if>
	
	<c:if test="${!empty(cart.map) }">
	<table width="70%"  class="table table-hover table-bordered table-striped text-center">
	<thead>
		<tr>
			<th>ID</th>
			<th>����</th>
			<th>����</th>
			<th>�΃r</th>
			<th>����</th>
			<th>СӋ</th>
			<th>����</th>
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
				<a href="javascript:void(0)" onclick="deleteitem(${entry.key})" class="text-primary">�h��</a>
			</td>

		</tr>

		</c:forEach>
		
		<tr>
			<td colspan="3"  class="table-warning">���r</td>
			<td colspan="2"  class="table-warning">
				<input type="text" class="text-center" readonly="readonly" name="Sum" value="${cart.price }">Ԫ
			</td>
			<td colspan="2"  class="table-warning">
				<a href="javascript:void(0)" onclick="clearcart()" class="text-danger">���ُ��܇</a>
			</td>
		</tr>
		<tr>
			<td colspan="7" align=center class="table-success">
				<input  type="submit" value="�Y��" class="btn btn-outline-primary btn-lg button">
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