<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home One || Witter Multipage Responsive Template</title>
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
<!-- responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- modernizr css -->
<link rel="stylesheet" href="style.css">
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!--Header Area Start-->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->

	<!-- slider Area Start -->
	<div class="slider-area">
		<div class="bend niceties preview-1">
			<div id="ensign-nivoslider" class="slides">
				<img
					src="https://d1e00ek4ebabms.cloudfront.net/production/77b41724-a1a7-464f-8135-fc7e0f7cec12.jpg"
					alt="" title="#slider-direction-1" /> <img
					src="https://s26162.pcdn.co/wp-content/uploads/2020/03/Bookstore-Indie-1.jpg"
					alt="" title="#slider-direction-2" />
			</div>
			<!-- direction 1 -->
			<div id="slider-direction-1" class="text-center slider-direction">
				<!-- layer 1 -->
				<div class="layer-1">
					<h2 class="title-1">Welcome to Bookshop!</h2>
				</div>
				<!-- layer 2 -->
				<div class="layer-2">
					<p class="title-2">Bookshop is an online bookstore with a
						mission to financially support local, independent bookstores. We
						believe that bookstores are essential to a healthy culture.
						They’re where authors can connect with readers, where we discover
						new writers, where children get hooked on the thrill of reading
						that can last a lifetime. They’re also anchors for our downtowns
						and communities.</p>
				</div>
				<!-- layer 3 -->
				<div class="layer-3">
					<a href="#" class="title-3">SHOPPING</a>
				</div>
				<!-- layer 4 -->
				<div class="layer-4">
					<form action="#" class="title-4">
						<input type="text" placeholder="Enter your book title here">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
			<!-- direction 2 -->
			<div id="slider-direction-2" class="slider-direction">
				<!-- layer 1 -->
				<div class="layer-1">
					<h2 class="title-1">Welcome to Bookshop!</h2>
				</div>
				<!-- layer 2 -->
				<div class="layer-2">
					<p class="title-2">Bookshop is an online bookstore with a
						mission to financially support local, independent bookstores. We
						believe that bookstores are essential to a healthy culture.
						They’re where authors can connect with readers, where we discover
						new writers, where children get hooked on the thrill of reading
						that can last a lifetime. They’re also anchors for our downtowns
						and communities.</p>
				</div>
				<!-- layer 3 -->
				<div class="layer-3">
					<a href="#" class="title-3">SHOPPING</a>
				</div>
				<!-- layer 4 -->
				<div class="layer-4">
					<form action="#" class="title-4">
						<input type="text" placeholder="Enter your book title here">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- slider Area End-->
	<!-- Online Banner Area Start -->
	<div class="online-banner-area">
		<div class="container">
			<div class="banner-title text-center">
				<h2>
					ONLINE <span>BOOK STORE</span>
				</h2>
				<p>The Online Books Guide is the biggest big store and the
					biggest books library in the world that has alot of the popular and
					the most top category books presented here. Top Authors are here
					just subscribe your email address and get updated with us.</p>
			</div>
			<div class="row">
				<div class="banner-list">
					<c:forEach items="${bookNewRelease}" var="bookNew">
						<div class="col-md-4 col-sm-6">
							<div class="single-banner">
								<a href="#"> <img src="${bookNew.image}" alt="">
								</a>
								<div class="price">
									<span>$</span>${bookNew.price}
								</div>
								<div class="banner-bottom text-center">
									<a href="#">NEW RELEASE ${bookNew.publishDate.getYear()}</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- Online Banner Area End -->

	<!-- Featured Product Area Start -->
	<div class="featured-product-area section-padding">
		<h2 class="section-title">FEATURED PRODUCTS</h2>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="tab-menu">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="first-item active"><a
								href="#arrival" aria-controls="arrival" role="tab"
								data-toggle="tab">New Arrival</a></li>
							<li role="presentation"><a href="#sale" aria-controls="sale"
								role="tab" data-toggle="tab">BEST SELLERS</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="product-list tab-content">
					<div role="tabpanel" class="tab-pane fade in active" id="arrival">
						<div class="featured-product-list indicator-style">
							<c:forEach items="${listBook}" var="book">
								<div class="single-p-banner">
									<div class="col-md-3">
										<div class="single-banner">
											<div class="product-wrapper">
												<a href="#" class="single-banner-image-wrapper"> <img
													alt="" src="${book.image}">
													<div class="price">
														<span>$</span>${book.price}
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i> <i
															class="fa fa-star icolor"></i> <i
															class="fa fa-star icolor"></i> <i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</a>
												<div class="product-description">
													<div class="functional-buttons">
														<a href="#" title="Add to Cart"> <i
															class="fa fa-shopping-cart"></i>
														</a> <a href="#" title="Add to Wishlist"> <i
															class="fa fa-heart-o"></i>
														</a> <a href="#" title="Quick view" data-toggle="modal"
															data-target="#productModal"> <i
															class="fa fa-compress"></i>
														</a>
													</div>
												</div>
											</div>
											<div class="banner-bottom text-center">
												<a href="#">${book.title}</a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Featured Product Area End -->
	<!-- Testimonial Area Start -->
	<div class="testimonial-area text-center">
		<div class="container">
			<div class="testimonial-title">
				<h2>OUR TESTIMONIAL</h2>
				<p>What our clients say about the books reviews and comments</p>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="testimonial-list">
						<c:forEach items="${reviewByName}" var="review">
							<div class="single-testimonial">
								<img
									src="https://lh3.googleusercontent.com/proxy/L8ZJZAxZRJ73uTyTEMjF_bOWG-VtWajEckTaiTsM1qMzRJMD9aqC2ZbVU6gOX6lo-3O14WBw6V5KKqh_sIxzcX-KDX24-w9qQYksmXmtvA"
									alt="">
								<div class="testmonial-info clearfix">
									<p>${review.review}</p>
									<div class="testimonial-author text-center">
										<h3>${review.name}</h3>
										<p>${review.role}</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial Area End -->
	<!-- Counter Area Start -->
	<div class="counter-area section-padding text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${quantityBook}</span>
							</span>
							<h3>BOOKS</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${quantityUser}</span>
							</span>
							<h3>USERS</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 col-xs-6">
					<div class="single-counter wow" data-wow-duration="1.5s"
						data-wow-delay=".3s">
						<div class="counter-info">
							<span class="fcount"> <span class="counter">${quantityAuthor}</span>
							</span>
							<h3>AUTHORS</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Counter Area End -->
	<!-- Footer Area Start -->
	<jsp:include page="Footer.jsp"></jsp:include>
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