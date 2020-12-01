<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BOOK4</title>
    <link href="../css/st1.css" rel="stylesheet" type="text/css" >
    <!-- CSS文件載入 -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/style.css">
    <!-- js文件載入 -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
</head>
<%
	product[] s=new productDao().query();
%>
<body>
<table width=700 align=center>
	<tr id="head">
		<td height=155 align=center><jsp:include page="../head.jsp"/>
		<hr>
	<tr class="content">
		<td height=400 align=center >
    <!-- 產品商城/start -->
    <section class="page-content">
        <div class="container pt-5 pb-5">
            <div class="row">
                <!-- 產品說明/start -->
                <div class="col-12 col-md-12">
                    <div class="row">
                        <!-- 商品照片/start -->
                        <div class="col-12 col-md-6">
                            <img src="../img/4.jpg" alt="struts2開發" class="img-fluid w-75">
                        </div>
                        <!-- 商品照片/end -->
                        <!-- 商品介紹/start -->
                        <div class="col-12 col-md-6">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" src="../img/b4.jpg" alt="Card image" style="width:100%">
    					<div class="card-img-overlay">
      					<h4 class="mb-3 title-color">struts2開發</h4>
      					<p class="card-text">
                            <h5 class="text-danger">
                                NT$&nbsp;275
                            </h5>
                            <p class="mt-4">出版商:老豬</p>
                            <p class="mt-4">出版日期:2013-10-01</p>
                            <div class="mb-3">
                                <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[3].getId() %>" class="btn btn-primary text-white mr-1 button">加入購物車</a>
                            </div>
                        </div>
     					</p>
    						</div>                         
                        </div>
                        <!-- 商品介紹/end -->
                        <!-- 詳細資料/start -->
                        <div class="col-12 mt-5 mb-5">
                            <ul class="nav nav-tabs" id="ProductTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">商品描述</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="specification-tab" data-toggle="tab" href="#specification" role="tab" aria-controls="specification" aria-selected="false">規格</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="ProductTabContent">
                                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                    <p class="p-2">《Struts2基礎與案例開發詳解(附光盤)》以理論和實踐相結合的模式，介紹如何用Struts2來開發基於B∕S結構的應用程序，使讀者更容易掌握Struts2的相關知識。</br></br>
    《Struts2基礎與案例開發詳解(附光盤)》共分17章，其中第1?12章循序漸進地講解Struts2基本知識、Struts2配置方式、Struts2攔截器、OGNL表達式、Struts2標籤、Struts2校驗等相關內容，第13?16章講解前端技術jQuery、Struts2測試以及Struts2、Spring、Hibernate的整合等內容，第17章講解使用Struts2開發一個日誌管理系統的方法。</br></br>
    本書內容結構合理，語言簡練、容易理解，適合Struts2的初學者或有相關編程經驗的用戶使用，也可供廣大軟件開發者和編程愛好者參考使用，更是學校及培訓機構的首選用書。</p>
                                </div>
                                <div class="tab-pane fade" id="specification" role="tabpanel" aria-labelledby="specification-tab">
                                    <p class="p-2">語言:簡體中文</br>頁數:435</br>裝訂:平裝</p>
                                </div>
                            </div>
                        </div>
                        <!-- 詳細資料/end -->
                    </div>
                </div>
                <!-- 產品說明/end -->
            </div>
        </div>
    </section>
    <!-- 產品商城/end -->
    <tr class="end">
		<td height=100 align=center ><jsp:include page="../end.jsp"/>
</table>
</body>
</html>