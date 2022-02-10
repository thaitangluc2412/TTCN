<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>${book.title}</title>
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
			<div class="row product-detail-wapper">
				<div class="col-md-6 col-sm-7">
					<div class="single-product-image-inner row">
						<!-- Tab panes -->
						<div class="tab-content col-sm-9">
							<div class="id-product hidden">${book.bookId}</div>
							<div class="title-product hidden">${book.title}</div>
							<div role="tabpanel" class="tab-pane active" id="one"
								style="height: 400px">
								<a class="venobox" href="${book.image}" data-gall="gallery"
									title=""> <img src="${book.image}" alt=""
									style="height: 100%; width: 100%">
								</a>
							</div>
						</div>
						<div class=" col-sm-3" style="height: 400px;">
							<div class="row" style="height: 31%; margin-bottom: 10px;">
								<a class="venobox" href="${book.image}" data-gall="gallery"
									title="" style="height: 100%; width: 100%"> <img
									src="${book.image}" alt="" style="height: 100%; width: 100%">
								</a>
							</div>
							<div class="row" style="height: 31%; margin-bottom: 10px;">
								<a class="venobox" href="${book.image}" data-gall="gallery"
									title="" style="height: 100%; width: 100%"> <img
									src="${book.image}" alt="" style="height: 100%; width: 100%">
								</a>
							</div>
							<div class="row" style="height: 31%">
								<a class="venobox" href="${book.image}" data-gall="gallery"
									title="" style="height: 100%; width: 100%"> <img
									src="${book.image}" alt="" style="height: 100%; width: 100%">
								</a>
							</div>
						</div>
						<!-- Nav tabs -->
						<!--  	<ul class="product-tabs" role="tablist">
							<li role="presentation" class="active"><a class="venobox"
								href="${book.image}" aria-controls="one" role="tab"
								data-toggle="tab"><img src="${book.image}"
									style="width: 150px; height: 160px;" alt=""></a></li>
							<li role="presentation"><a class="venobox"
								href="${book.image}" aria-controls="two" role="tab"
								data-toggle="tab"><img src="${book.image}"
									style="width: 150px; height: 160px;" alt=""></a></li>
							<li role="presentation"><a class="venobox"
								href="${book.image}" aria-controls="three" role="tab"
								data-toggle="tab"><img src=${book.image
									}
									style="width: 150px; height: 160px;" alt=""></a></li>
						</ul> -->

					</div>
				</div>
				<div class="col-md-6 col-sm-5">
					<div class="single-product-details">
						<h3>${book.title}</h3>
						<p>${book.description}</p>
						<div class="list-pro-rating">
							<c:forEach var="i" begin="1" end="5">
								<i class="fa fa-star ${i <= book.rating ? "icolor" : ""}"></i>
							</c:forEach>
						</div>
						<div class="single-product-price" style="margin-bottom: 10px">
							<h3>${book.price}</h3>
						</div>
						<div class="col" style="text-align: left; margin-bottom: 10px;">
							<button class="btn btn-dark addToCart">
								<i class="fa fa-shopping-cart addToCart"><span
									class="addToCart" style="font-family: sans-serif"> Add
										to cart</span></i>
							</button>
							<a href="CheckoutController"><button class="btn btn-success addToCart">
									<i class="fa fa-shopping-bag addToCart"><span class="addToCart"
										style="font-family: sans-serif"> Buy now</span></i>
								</button></a>
						</div>
						<div class="single-product-categories">
							<label>Categories:</label> <span><a
								href="Shopping?categoryID=${book.categoryId.getCategoryId()}"
								class="open-comment-form">${book.categoryId.name}</a></span><br> <label>Author:</label>
							<span> <c:forEach items="${book.getBookUser()}"
									var="bookUser" varStatus="loop">
									<a
										href="AuthorBookController?AuthorId=${bookUser.getUser().getUserId()}"
										class="open-comment-form">${bookUser.getUser().getName()}</a>
									${loop.last ? '' : ','}
								</c:forEach></span>
						</div>
						<div class="social-share">
							<label>Share: </label>
							<ul class="social-share-icon">
								<li><a href="#"><i class="flaticon-social"></i></a></li>
								<li><a href="#"><i class="flaticon-social-1"></i></a></li>
								<li><a href="#"><i class="flaticon-social-2"></i></a></li>
							</ul>
						</div>
						<!-- <div id="product-comments-block-extra">
							<ul class="comments-advices">
								<li><a href="#" class="open-comment-form" title="Quick view" data-toggle="modal" data-target="#productModal">Write a
										review</a></li>
							</ul>
						</div> -->
					</div>
				</div>
			</div>
			<div class="row" style="margin-top: -40px">
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
								<c:forEach items="${book.getReviews()}" var="review">
									<div class="mb-3">
										<div class="seller-details">
											<label class="form-label">${review.getUser().name}</label>
											<ul>
												<c:forEach var="i" begin="1" end="5">
													<i class="fa fa-star ${i <= review.rating ? "icolor" : ""}"></i>
												</c:forEach>
											</ul>
											<div class="form-label">${review.comment}</div>
										</div>
									</div>
								</c:forEach>
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
		<h1 class="section-title">RELATED PRODUCTS</h1><br>
		<div class="container">
			<div class="row">
				<div class="related-product indicator-style">
					<c:forEach items="${listBook}" var="book">
						<div class="col-4 product-wapper"
							style="max-width: 80%; height: 450px">
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
								<button class="btn btn-dark addToCart"
									style="margin-bottom: 5px;">
									<i class="fa fa-shopping-cart addToCart"><span
										class="addToCart" style="font-family: sans-serif"> Add
											to cart</span></i>
								</button>
								<a href="CheckoutController"><button class="btn btn-success addToCart">
										<i class="fa fa-shopping-bag addToCart"><span class="addToCart"
											style="font-family: sans-serif"> Buy now</span></i>
									</button></a>
							</div>
						</div>
					</c:forEach>
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