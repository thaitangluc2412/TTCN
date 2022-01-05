<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product Details || Witter Multipage Responsive Template</title>
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
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->

	<!-- Breadcrumbs Area Start -->
	<jsp:include page="BreadCrumbs.jsp"></jsp:include>
	<!-- Breadcrumbs Area Start -->
	
	
	
	<div class="single-product-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-7">
					<div class="single-product-image-inner">
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="one">
								<a class="venobox" href="${book.image}"
									data-gall="gallery" title=""> <img
									src="${book.image}"  alt="">
								</a>
							</div>
							
						</div>
						<!-- Nav tabs -->
						<ul class="product-tabs" role="tablist">
							<li role="presentation" class="active"><a class="venobox" href="${book.image}"
								aria-controls="one" role="tab" data-toggle="tab"><img
									src="${book.image}" style="width:150px;height:160px;" alt=""></a></li>
							<li role="presentation"><a class="venobox" href="${book.image}" aria-controls="two"
								role="tab" data-toggle="tab"><img
									src="${book.image}" style="width:150px;height:160px;" alt=""></a></li>
							<li role="presentation"><a class="venobox" href="${book.image}"
								aria-controls="three" role="tab" data-toggle="tab"><img
									src=${book.image} style="width:150px;height:160px;" alt=""></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-5">
					<div class="single-product-details">
						<div class="list-pro-rating">
							<c:forEach var = "i" begin = "1" end ="${book.rating}">
								<i class="fa fa-star icolor"></i> 
							</c:forEach>
							<c:forEach var = "i" begin = "1" end ="${5-book.rating}">
								<i class="fa fa-star"></i>
							</c:forEach>
						</div>
						<h2>${book.title}</h2>
						<div class="availability">
							<span>In stock</span>
						</div>
						<p>${book.description}</p>
						<div class="single-product-price">
							<h2>${book.price}</h2>
						</div>
						<div class="product-attributes clearfix">
							<span class="pull-left" id="quantity-wanted-p"> <span
								class="dec qtybutton">-</span> <input type="text" value="1"
								class="cart-plus-minus-box"> <span class="inc qtybutton">+</span>
							</span> <span> <a class="cart-btn btn-default" href="cart.html">
									<i class="flaticon-shop"></i> Add to cart
							</a>
							</span>
						</div>
						<div class="add-to-wishlist">
							<a class="wish-btn" href="cart.html"> <i
								class="fa fa-heart-o"></i> ADD TO WISHLIST
							</a>
						</div>
						<div class="single-product-categories">
							<label>Categories:</label> <span>${book.categoryId.name}</span><br>
							<label>Author:</label> <span>adu</span>
						</div>
						<div class="social-share">
							<label>Share: </label>
							<ul class="social-share-icon">
								<li><a href="#"><i class="flaticon-social"></i></a></li>
								<li><a href="#"><i class="flaticon-social-1"></i></a></li>
								<li><a href="#"><i class="flaticon-social-2"></i></a></li>
							</ul>
						</div>
						<div id="product-comments-block-extra">
							<ul class="comments-advices">
								<li><a href="#" class="open-comment-form">Write a
										review</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-9">
					<div class="p-details-tab-content">
						<div class="p-details-tab">
							<ul class="p-details-nav-tab" role="tablist">
								<li role="presentation" class="active"><a href="#more-info"
									aria-controls="more-info" role="tab" data-toggle="tab">Description</a></li>
								<li role="presentation"><a href="#data"
									aria-controls="data" role="tab" data-toggle="tab">Review</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
						<div class="tab-content review">
							<div role="tabpanel" class="tab-pane active" id="more-info">
								<p>${book.description}</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="data">
								<div class="mb-3">
									<div class="seller-details">
										<label class="form-label">Customer Name</label>
										<ul>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
										</ul>
										<div class="form-label">I really recommend this book</div>
									</div>
								</div>
								<div class="mb-3">
									<div class="seller-details">
										<label class="form-label">Customer Name</label>
										<ul>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
										</ul>
										<div class="form-label">I really recommend this book</div>
									</div>
								</div>
								<div class="mb-3">
									<div class="seller-details">
										<label class="form-label">Customer Name</label>
										<ul>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
											<li><i class="fa fa-star icolor"></i></li>
										</ul>
										<div class="form-label">I really recommend this book</div>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Single Product Area End -->
	<!-- Related Product Area Start -->
	<div class="related-product-area">
		<h2 class="section-title">RELATED PRODUCTS</h2>
		<div class="container">
			<div class="row">
				<div class="related-product indicator-style">
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/1.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick View"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">People of the book</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/2.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick view" data-toggle="modal"
											data-target="#productModal"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">East of eden</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/3.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick view" data-toggle="modal"
											data-target="#productModal"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">Lone some dove</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/4.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick view" data-toggle="modal"
											data-target="#productModal"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">The secret garden</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/5.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick view" data-toggle="modal"
											data-target="#productModal"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">Twilight</a>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="single-banner">
							<div class="product-wrapper">
								<a href="#" class="single-banner-image-wrapper"> <img alt=""
									src="img/featured/6.jpg">
									<div class="price">
										<span>$</span>160
									</div>
									<div class="rating-icon">
										<i class="fa fa-star icolor"></i> <i class="fa fa-star icolor"></i>
										<i class="fa fa-star icolor"></i> <i class="fa fa-star"></i> <i
											class="fa fa-star"></i>
									</div>
								</a>
								<div class="product-description">
									<div class="functional-buttons">
										<a href="#" title="Add to Cart"> <i
											class="fa fa-shopping-cart"></i>
										</a> <a href="#" title="Add to Wishlist"> <i
											class="fa fa-heart-o"></i>
										</a> <a href="#" title="Quick view" data-toggle="modal"
											data-target="#productModal"> <i class="fa fa-compress"></i>
										</a>
									</div>
								</div>
							</div>
							<div class="banner-bottom text-center">
								<a href="#">Cold mountain</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Related Product Area End -->
	<!-- Footer Area Start -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!-- Footer Area End -->
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