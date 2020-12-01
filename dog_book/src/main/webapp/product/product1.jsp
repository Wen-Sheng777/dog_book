<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BOOK1</title>
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
                            <img src="../img/1.jpg" alt="JavaWeb開發" class="img-fluid w-75">
                        </div>
                        <!-- 商品照片/end -->
                        <!-- 商品介紹/start -->
                        <div class="col-12 col-md-6">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" src="../img/b2.jpg" alt="Card image" style="width:100%">
    					<div class="card-img-overlay">
      					<h4 class="mb-3 title-color">JavaWeb開發</h4>
      					<p class="card-text">
                            <h5 class="text-danger">
                                <small class="text-secondary mr-2">
                                    <del>NT$&nbsp;500</del>
                                </small>
                                NT$&nbsp;380
                            </h5>
                            <p class="mt-4">出版商:老豬</p>
                            <p class="mt-4">出版日期:2014-03-01</p>
                            <p class="d-block text-secondary">產品分類：<span>書</span></p>
                            <div class="mb-3">
                                <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[0].getId() %>" class="btn btn-primary text-white mr-1 button">加入購物車</a>
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
                                    <p class="p-2">內容新穎、知識全面、講解詳細，分為3篇，共18章。其中，第1篇是基礎篇，包括第1~4章，主要講解了搭建Java Web開發環境的基本知識，並簡要講解了HTML、CSS、JavaScript等網頁開發的基礎知識；第2篇是核心技術篇，包括第5~15章，詳細講解了Java Web開發的核心知識，主要包括JSP、動作指令、內置對象、自定義標籤、Servlet、JavaBean、JSTL標籤庫、Ajax、JDBC編程、JSF和JavaMail的基本知識；第3篇是提高篇，包括第16?18章，依次闡述了Struts 2、Hibernate和Spring 3個主流開源開發框架的基本知識和具體用法。全書理論結合實踐，通過大量實例剖析了Java Web開發技術的基礎知識。每個實例先提出製作思路及包含的知識點，然後力求用最通俗的語言將高深的知識闡述出來。通過本書，讀者可以深入瞭解Java Web開發技術的基本知識，並挖掘出基於主流框架的最佳組合。</p>
                                </div>
                                <div class="tab-pane fade" id="specification" role="tabpanel" aria-labelledby="specification-tab">
                                    <p class="p-2">語言:簡體中文</br>頁數:488</br>裝訂:平裝</p>
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