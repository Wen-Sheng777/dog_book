<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BOOK3</title>
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
                            <img src="../img/3.jpg" alt="ajax開發" class="img-fluid w-75">
                        </div>
                        <!-- 商品照片/end -->
                        <!-- 商品介紹/start -->
                        <div class="col-12 col-md-6">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" src="../img/b3.jpg" alt="Card image" style="width:100%">
    					<div class="card-img-overlay">
      					<h4 class="mb-3 title-color">ajax開發</h4>
      					<p class="card-text">
                            <h5 class="text-danger">
                                NT$&nbsp;350
                            </h5>
                            <p class="mt-4">出版商:老豬</p>
                            <p class="mt-4">出版日期:2014-03-01</p>
                            <p class="d-block text-secondary">產品分類：<span>書</span></p>
                            <div class="mb-3">
                                <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[2].getId() %>" class="btn btn-primary text-white mr-1 button">加入購物車</a>
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
                                    <p class="p-2">本書主要學習JavaScript中兩個必備的知識點：第一個為AJAX，它是客戶端JavaScript與後端服務器進行交流的一種技術；第二個為jQuery，它是JavaScript目前的一個主流庫文件。</br></br>
附加學習Node.js知識，以此來搭建後台服務器，輔助讀者更全面、更系統地完成AJAX學習。AJAX是一項非常重要的技術，幾乎所有頁面要實現更好的體驗都逃不過AJAX技術，而且近年來逐漸流行的Web APP幾乎都是以AJAX為基礎來實現的。
因此，本書的AJAX部分結合目前實際開發進行詳細講解，首先結合學習Node.js，使用express框架搭建Node.js服務器；然後著重講解AJAX技術原理，帶領讀者進行實際運用和封裝；最後詳細講解AJAX跨域和同步、異步等常見問題的處理方式。</br></br>
而jQuery是一個重要的前端框架，大量的前端特效插件也是基於此實現的。因此，本書jQuery部分主要深入學習原理知識，對jQuery的DOM操作、事件處理、動畫效果及jQuery的AJAX應用等方面進行詳細講解，並通過大量實例貫穿整個jQuery知識體系。
本書是“跟兄弟連學HTML5系列教程”的第四本書，需要瞭解JavaScript的基礎語法和DOM部分。</br></br>
本書以實例為主，不再過多地講解語法等基礎知識點，讓讀者可以從具體實例中吸取實戰經驗。</p>
                                </div>
                                <div class="tab-pane fade" id="specification" role="tabpanel" aria-labelledby="specification-tab">
                                    <p class="p-2">語言:簡體中文</br>頁數:262</br>裝訂:平裝</p>
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