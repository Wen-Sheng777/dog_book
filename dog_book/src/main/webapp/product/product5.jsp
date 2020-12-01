<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BOOK5</title>
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
                            <img src="../img/5.jpg" alt="spring開發" class="img-fluid w-75">
                        </div>
                        <!-- 商品照片/end -->
                        <!-- 商品介紹/start -->
                        <div class="col-12 col-md-6">
                        <div class="card img-fluid" style="width:500px">
    					<img class="card-img-top" src="../img/b4.jpg" alt="Card image" style="width:100%">
    					<div class="card-img-overlay">
      					<h4 class="mb-3 title-color">spring開發</h4>
      					<p class="card-text">
                            <h5 class="text-danger">
                                NT$&nbsp;400
                            </h5>
                            <p class="mt-4">出版商:老豬</p>
                            <p class="mt-4">出版日期:2014-03-01</p>
                            <div class="mb-3">
                                <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[4].getId() %>" class="btn btn-primary text-white mr-1 button">加入購物車</a>
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
                                    <p class="p-2">全書共13章，講解Spring MVC的相關知識，內容包括Spring基礎、Spring MVC入門、控制器、類型轉換器、數據綁定、Spring表單標簽庫、JSON數據轉換、攔截器、數據驗證、國際化、統一異常處理、文件上傳與下載、EL與JSTL、MyBatis以及1個完整的項目案例。</br></br>
                                    實例側重實用性、趣味性強、通俗易懂，讀者能夠快速掌握Spring MVC的基礎知識、編程技巧，為大型項目開發打下堅實基礎。 附有教學視頻、源代碼、課件、教學大綱、電子教案、習題答案等配套資源，作為大學電腦的教材，也可以作為Java技術的培訓教材，適合廣大Java EE應用開發人員使用。</p>
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