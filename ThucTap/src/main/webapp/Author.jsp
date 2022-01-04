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


	<div class="d-flex justify-content-center">
		<div class="input-group" style="width: 500px">
			<input type="search" class="form-control rounded w-75 p-3"
				placeholder="Search" aria-label="Search"
				aria-describedby="search-addon" />
			<button type="button" class="btn btn-outline-primary">search</button>
		</div>
	</div>

	<div class="shopping-cart-area section-padding">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="wishlist-table-area table-responsive">
						<table>
							<thead>
								<tr>
									<th class="product-id">ID</th>
									<th class="product-image">Author</th>
									<th class="product-author">Address</th>
									<th class="product-category">Phone</th>
									<th class="product-edit">Books</th>
									<th class="product-quantity">Sales</th>
									<th class="product-quantity">Edit</th>
									<th class="product-subtotal">Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${listAuthor}" var="author">
									<tr>
										<td class="customer-id">
											<p>
											<p>${author.name}</p>
											</p>
										</td>
										<td class="customer-email">
											<p>
											<p>${author.email}</p>
											</p>
										</td>
										<td class="customer-address">
											<p>
											<p>${author.address}</p>
											</p>
										</td>
										<td class="customer-phone">
											<p>
											<p>${author.phoneNumber}</p>
											</p>
										</td>
										<td class="author-books">
											<p>
												<a href="#">Books</a>
											</p>
										</td>
										<td class="author-sales">
											<p>
												<a href="#">Sales</a>
											</p>
										</td>
										<td class="product-edit">
											<p>
												<a href="#">Edit</a>
											</p>
										</td>
										<td class="product-remove "><a href="# "> <i
												class="flaticon-delete "></i>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="shopingcart-bottom-area ">
						<a class="left-shoping-cart " href="# ">CREATE NEW CUSTOMER</a>

					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Footer Area Start -->
	<jsp:include page="Footer.jsp"></jsp:include>
	<!--End of Quickview Product-->
	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="js/vendor/jquery-1.12.0.min.js "></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js "></script>
	<!-- owl.carousel js -->
	<script src="js/owl.carousel.min.js "></script>
	<!-- jquery-ui js -->
	<script src="js/jquery-ui.min.js "></script>
	<!-- jquery Counterup js -->
	<script src="js/jquery.counterup.min.js "></script>
	<script src="js/waypoints.min.js "></script>
	<!-- jquery countdown js -->
	<script src="js/jquery.countdown.min.js "></script>
	<!-- jquery countdown js -->
	<script type="text/javascript " src="venobox/venobox.min.js "></script>
	<!-- jquery Meanmenu js -->
	<script src="js/jquery.meanmenu.js "></script>
	<!-- wow js -->
	<script src="js/wow.min.js "></script>
	<script>
		new WOW().init();
	</script>
	<!-- scrollUp JS -->
	<script src="js/jquery.scrollUp.min.js "></script>
	<!-- plugins js -->
	<script src="js/plugins.js "></script>
	<!-- Nivo slider js -->
	<script src="lib/js/jquery.nivo.slider.js " type="text/javascript "></script>
	<script src="lib/home.js " type="text/javascript "></script>
	<!-- main js -->
	<script src="js/main.js "></script>
</body>

</html>
