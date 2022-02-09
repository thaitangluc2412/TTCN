<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!-- Place favicon.ico in the root directory -->
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300'
	rel='stylesheet' type='text/css'>

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- animate css -->
<link rel="stylesheet" href="css/animate.css">
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="css/jquery-ui.min.css">
<!-- meanmenu css -->
<link rel="stylesheet" href="css/meanmenu.min.css">
<!-- Font-Awesome css -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- pe-icon-7-stroke css -->
<link rel="stylesheet" href="css/pe-icon-7-stroke.css">
<!-- Flaticon css -->
<link rel="stylesheet" href="css/flaticon.css">
<!-- venobox css -->
<link rel="stylesheet" href="venobox/venobox.css" type="text/css"
	media="screen" />
<!-- nivo slider css -->
<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="lib/css/preview.css" type="text/css"
	media="screen" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="css/owl.carousel.css">
<!-- style css -->
<link rel="stylesheet" href="style.css">
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- modernizr css -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->

	<!--Header Area Start-->
	<jsp:include page="Header.jsp" />
	<!--Header Area End-->


	<!-- Breadcrumbs Area Start -->
	<!-- Breadcrumbs Area Start -->
	<jsp:include page="BreadCrumbs.jsp"></jsp:include>
	<!-- Breadcrumbs Area Start -->
	<!-- Shop Area Start -->
	<div class="shopping-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-12">
					<div class="shop-widget">
						<div class="shop-widget-top ">
							<aside class="widget widget-categories mt-0">
								<div class="card-header bg-success text-white text-uppercase">
									<i class="fa fa-list"></i> Categories
								</div>
								<ul class="list-group category_block">
									<li
										class="list-group-item text-white ${categoryID == null || categoryID == '' ? "bg-secondary" : ""}"><a
										href="Shopping?"> <i class="fa fa-angle-double-right"></i>
											All
									</a></li>
									<c:forEach items="${listCategory}" var="category">
										<li
											class="list-group-item text-white ${category.categoryId == categoryID ? "bg-secondary" : ""}"><a
											href="Shopping?categoryID=${category.categoryId}"> <i
												class="fa fa-angle-double-right"></i> ${category.name}
										</a></li>
									</c:forEach>
								</ul>
							</aside>
						</div>
						<div class="shop-widget-bottom">
							<aside class="widget widget-seller">
								<h2 class="sidebar-title">OUR REVIEW</h2>
								<c:forEach items="${reviewByName}" var="review">
									<div class="row"
										style="margin-bottom: 20px; border-bottom: 1px solid #ddd; padding-bottom: 10px; height: 100px">
										<div class="col-sm-12 row">
											<div class="col-sm-4">
												<a href="#"><img
													src="https://cdn.pixabay.com/photo/2020/07/14/13/07/icon-5404125_1280.png"
													style="height: 60px; width: 70px"></a>
											</div>
											<div class="col-sm-8">
												<div class="title-product"
													style="margin-left: 0; text-align: left">
													<a href="#">${review.comment}</a>
												</div>
												<div class="rating-icon" style="text-align: left">
													<p style="color: #ba1e1e; margin-bottom: 0px">${review.name}</p>
													<div class="list-pro-rating">
														<c:forEach var="i" begin="1" end="5">
															<i class="fa fa-star ${i <= review.rating ? "icolor" : ""}"></i>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</aside>
						</div>
						<div class="shop-widget-bottom">
							<aside class="widget widget-seller">
								<h2 class="sidebar-title">TOP SELLERS</h2>
								<c:forEach items="${bookBestSeller}" var="bestSeller">
									<div class="row"
										style="margin-bottom: 20px; border-bottom: 1px solid #ddd; padding-bottom: 10px; height: 100px">
										<div class="col-sm-12 row">
											<div class="col-sm-4">
												<a href="#"><img src="${bestSeller.image}"
													style="height: 80px; width: 70px"></a>
											</div>
											<div class="col-sm-8">
												<div class="title-product">
													<a href="TheBook?Book=${bestSeller.bookId}">${bestSeller.title}</a>
												</div>
												<div class="rating-icon" style="text-align: center">
													<p style="color: #ba1e1e; margin-bottom: 0px">$${bestSeller.price}</p>
													<div class="list-pro-rating">
														<c:forEach var="i" begin="1" end="5">
															<i class="fa fa-star ${i <= bestSeller.rating ? "icolor" : ""}"></i>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</aside>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-sm-9 col-xs-12">
					<div class="shop-tab-area">
						<div class="shop-tab-list">
							<div class="shop-tab-pill pull-left">
								<ul>
									<li class="active" id="left"><a data-toggle="pill"
										href="#home"><i class="fa fa-th"></i><span>Grid</span></a></li>
									<li><a data-toggle="pill" href="#menu1"><i
											class="fa fa-th-list"></i><span>List</span></a></li>
								</ul>
							</div>
						</div>
						<div class="tab-content">
							<div>
								<div style="margin-top: 10px">
									<form action="Shopping?categoryID=${categoryID}" method="POST">
										<input type="hidden" value="search" name="command">
										<div class="input-group" style="width: 100%">
											<input type="search" class="form-control rounded w-75 p-3"
												placeholder="Search..." aria-label="Search"
												aria-describedby="search-addon" name="searchBook"
												value="${searchBook}" />
											<button type="submit" class="btn btn-outline-primary">search</button>
										</div>
									</form>
								</div>
							</div>
							<div class="row tab-pane fade in active" id="home"
								style="margin-top: 20px">
								<div class="row shop-single-product-area">
									<c:forEach items="${listBookCurrentPage}" var="book">
										<div class="col-4 product-wapper"
											style="margin-bottom: 20px; border-bottom: 2px solid #ddd; border-right: 2px solid #ddd; padding-bottom: 20px">
											<div class="id-product hidden">${book.bookId}</div>
											<div class="single-product-wrapper">
												<a href="TheBook?Book=${book.bookId}"><img
													class="image-product" alt="" src="${book.image}"></a>
											</div>
											<div class="title-product">
												<a href="TheBook?Book=${book.bookId}">${book.title}</a>
											</div>
											<div class="rating-icon" style="text-align: center">
												<p style="color: #ba1e1e; margin-bottom: 0px">${book.price}</p>
												<div class="list-pro-rating">
													<c:forEach var="i" begin="1" end="5">
														<i class="fa fa-star ${i <= book.rating ? "icolor" : ""}"></i>
													</c:forEach>
												</div>
											</div>
											<div class="col" style="text-align: center">
												<button class="btn btn-dark addToCart">
													<i class="fa fa-shopping-cart addToCart"><span
														class="addToCart" style="font-family: sans-serif">
															Add to cart</span></i>
												</button>
												<a href="Checkout.jsp"><button class="btn btn-success addToCart">
														<i class="fa fa-shopping-bag addToCart"><span class="addToCart"
															style="font-family: sans-serif"> Buy now</span></i>
													</button></a>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<div id="menu1" class="tab-pane fade">
								<div class="row">
									<c:forEach items="${listBookCurrentPage}" var="book">
										<div class="col-12 single-shop-product product-wapper2">
											<div class="id-product hidden">${book.bookId}</div>
											<div class="col-xs-12 col-sm-5 col-md-4">
												<div class="left-item">
													<a href="TheBook?Book=${book.bookId}" title="${book.title}">
														<img src="${book.image}" alt="">
													</a>
												</div>
											</div>
											<div class="col-xs-12 col-sm-7 col-md-8">
												<div class="deal-product-content">
													<h4>
														<a href="TheBook?Book=${book.bookId}" title="East of eden">${book.title}</a>
													</h4>
													<div class="product-price">
														<span class="new-price">${book.price}</span>
													</div>
													<div class="list-rating-icon">
														<c:forEach var="i" begin="1" end="5">
															<i class="fa fa-star ${i <= book.rating ? "icolor" : ""}"></i>
														</c:forEach>
													</div>
													<p>${book.description}</p>
													<div class="availability addToCart">
														<button class="btn btn-dark addToCart">
															<i class="fa fa-shopping-cart addToCart"><span
																class="addToCart" style="font-family: sans-serif">
																	Add to cart</span></i>
														</button>
														<a href="Checkout.jsp"><button class="btn btn-success addToCart">
																<i class="fa fa-shopping-bag addToCart"><span class="addToCart"
																	style="font-family: sans-serif"> Buy now</span></i>
															</button></a>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
						<nav class="d-flex justify-content-center"
							aria-label="Page navigation example">
							<ul class="pagination">
								<c:if test="${currentPage != 1}">
									<li class="page-item"><a class="page-link"
										href="Shopping?page=1&categoryID=${categoryID}&searchBook=${searchBook}">
											First </a></li>
								</c:if>
								<c:forEach var="page" begin="${maxLeft}" end="${maxRight}">
									<li class="page-item ${page == currentPage ? "active" : "" } "><a
										class="page-link"
										href="Shopping?page=${page}&categoryID=${categoryID}&searchBook=${searchBook}">
											${page} </a></li>
								</c:forEach>
								<c:if test="${currentPage != totalPages}">
									<li class="page-item"><a class="page-link"
										href="Shopping?page=${totalPages}&categoryID=${categoryID}&searchBook=${searchBook}">
											Last </a></li>
								</c:if>
							</ul>
						</nav>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Shop Area End -->

	<!-- Footer Area Start -->
	<jsp:include page="Footer.jsp" />
	<!--End of Quickview Product-->


	<!-- all js here -->
	<!-- jquery latest version -->

	<script src="js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- jquery-ui js -->
	<script src="js/jquery-ui.min.js"></script>
	<!-- jquery Counterup js -->
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<!-- jquery countdown js -->
	<script src="js/jquery.countdown.min.js"></script>
	<!-- jquery countdown js -->
	<script type="text/javascript" src="venobox/venobox.min.js"></script>
	<!-- jquery Meanmenu js -->
	<script src="js/jquery.meanmenu.js"></script>
	<!-- wow js -->
	<script src="js/wow.min.js"></script>
	<script src="js/addToCart.js"></script>
	<script>
		new WOW().init();
	</script>
	<!-- scrollUp JS -->
	<script src="js/jquery.scrollUp.min.js"></script>
	<!-- plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Nivo slider js -->
	<script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
	<script src="lib/home.js" type="text/javascript"></script>
	<!-- main js -->
	<script src="js/main.js"></script>
</body>
</html>