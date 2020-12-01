<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"
    import="Dao.productDao"
    import="model.product"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOG_BOOK</title>
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
	product[] s=new productDao().query();
%>
<body>
	<DIV id="top">
		<!-- PageTop -->
	</DIV>
<table width=700 align=center>
	<tr id="head">
		<td height=155 align=center><jsp:include page="head.jsp"/>
		<hr>
	<tr class="content">
		<td height=400 align=center >
		
  <!-- 輪播/start -->
		<div id="demo" class="carousel slide" data-ride="carousel">
 
  <!-- 指示符 -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
    <li data-target="#demo" data-slide-to="3"></li>
    <li data-target="#demo" data-slide-to="4"></li>
    <li data-target="#demo" data-slide-to="5"></li>
    <li data-target="#demo" data-slide-to="6"></li>
  </ul>
 
  <!-- 輪播圖片 -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/n5.png">
    </div>
    <div class="carousel-item">
      <img src="img/n10.jpg">
    </div>
    <div class="carousel-item">
      <img src="img/n6.jpg">
      <div class="carousel-caption">
    <h1>霸道總柴</h1>
    </div>
    </div>
    <div class="carousel-item">
      <img src="img/n7.jpg">
      <div class="carousel-caption">
    <h3>柴剛睡~</h3>
    </div>
    </div>
    <div class="carousel-item">
      <img src="img/n8.jpg">
    </div>
    <div class="carousel-item">
      <img src="img/n15.jpg">
    </div>
    <div class="carousel-item">
      <img src="img/n3.jpg">
      <div class="carousel-caption">
    <h3>柴不想回家!!</h3>
  </div>
    </div>
  </div>
 
  <!-- 左右切换按钮 -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
 
</div>
	<!-- 輪播/end -->
		<hr>
	<!-- 熱門產品/start -->
    <section class="container mt-5">
        <div class="row">
            <div class="col-12 mb-2">
                <h2>熱門產品</h2>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div href="#" class="card mb-3">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/1.jpg" alt="LTG-BY-0001">
                    <div class="card-body">
                        <h4 class="card-title">JavaWeb開發</h4>
                        <p class="card-text">本書內容由淺入深，循序漸進，理論講解與實踐相結合，並列舉了大量典型應用實例。</p>
                        <h5 class="card-text text-danger">
                            <small class="text-secondary mr-2">
                                <del>NT$&nbsp;500</del>
                            </small>
                            NT$&nbsp;380
                        </h5>
                        <a href="product/product1.jsp" class="btn btn-outline-secondary btn-block button">查看商品</a>
                        <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[0].getId() %>" class="btn btn-outline-primary btn-block button">加入購物車</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div href="#" class="card mb-3">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/2.jpg" alt="TG-B-0001">
                    <div class="card-body">
                        <h4 class="card-title">jdbc開發</h4>
                        <p class="card-text">來自權威的Oracle Press的指南提供了用於Oracle9 i數據庫的JDBC程序的指南。</p>
                        <h5 class="card-text text-danger">NT$&nbsp;200</h5>
                        <a href="product/product2.jsp" class="btn btn-outline-secondary btn-block button">查看商品</a>
                        <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[1].getId() %>" class="btn btn-outline-primary btn-block button">加入購物車</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div href="#" class="card mb-3">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/3.jpg" alt="LTG-B-0001">
                    <div class="card-body">
                        <h4 class="card-title">ajax開發</h4>
                        <p class="card-text">AJAX是一項非常重要的技術，幾乎所有頁面要實現更好的體驗都逃不過AJAX技術。</p>
                        <h5 class="card-text text-danger">NT$&nbsp;350</h5>
                        <a href="product/product3.jsp" class="btn btn-outline-secondary btn-block button">查看商品</a>
                        <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[2].getId() %>" class="btn btn-outline-primary btn-block button">加入購物車</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div href="#" class="card mb-3">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/4.jpg" alt="LTG-B-0001">
                    <div class="card-body">
                        <h4 class="card-title">struts2開發</h4>
                        <p class="card-text">以理論和實踐相結合的模式，介紹如何用Struts2來開發基於B∕S結構的應用程序。</p>
                        <h5 class="card-text text-danger">NT$&nbsp;275</h5>
                        <a href="product/product4.jsp" class="btn btn-outline-secondary btn-block button">查看商品</a>
                        <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[3].getId() %>" class="btn btn-outline-primary btn-block button">加入購物車</a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div href="#" class="card mb-3">
                    <img class="card-img-top" src="${pageContext.request.contextPath}/img/5.jpg" alt="LTG-B-0001">
                    <div class="card-body">
                        <h4 class="card-title">spring開發</h4>
                        <p class="card-text">實例側重實用性、趣味性強、通俗易懂，讀者能夠快速掌握Spring MVC的基礎知識。</p>
                        <h5 class="card-text text-danger">NT$&nbsp;400</h5>
                        <a href="product/product5.jsp" class="btn btn-outline-secondary btn-block button">查看商品</a>
                        <a href="${pageContext.request.contextPath}/BuyServlet?id=<%=s[4].getId() %>" class="btn btn-outline-primary btn-block button">加入購物車</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 熱門產品/end -->
	
	<P class="pagetop">
			<A href="#top" class="btn btn-outline-secondary btn-block button">回上方</A>
	</P>
	<!-- google map/start -->
    <section class="container-fluid mt-5">
        <div class="row">
            <div class="embed-responsive map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3614.5348771362756!2d121.51673451500659!3d25.049854083964888!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442a61b98a122fb%3A0x87c1c844d4791c2a!2zMTAz5Y-w5YyX5biC5aSn5ZCM5Y2A6ZW35a6J6KW_6LevNzjlt7c05byEMi0x6Jmf!5e0!3m2!1szh-TW!2stw!4v1468852864613" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
    </section>
    <!-- google map/end -->
	<tr class="end">
		<td height=100 align=center ><jsp:include page="end.jsp"/>
</table>
</body>
</html>