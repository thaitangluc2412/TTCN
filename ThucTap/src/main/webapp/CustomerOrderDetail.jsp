<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Order Detail</title>
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
<style>
.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	min-width: 1000px;
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-wrapper .btn {
	float: right;
	color: #333;
	background-color: #fff;
	border-radius: 3px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-wrapper .btn:hover {
	color: #333;
	background: #f2f2f2;
}

.table-wrapper .btn.btn-primary {
	color: #fff;
	background: #03A9F4;
}

.table-wrapper .btn.btn-primary:hover {
	background: #03a3e7;
}

.table-title .btn {
	font-size: 13px;
	border: none;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

.table-title {
	color: #fff;
	background: #32b5f3;
	padding: 16px 25px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.show-entries select.form-control {
	width: 60px;
	margin: 0 5px;
}

.table-filter .filter-group {
	float: right;
	margin-left: 15px;
}

.table-filter input, .table-filter select {
	height: 34px;
	border-radius: 3px;
	border-color: #ddd;
	box-shadow: none;
}

.table-filter {
	padding: 5px 0 15px;
	border-bottom: 1px solid #e9e9e9;
	margin-bottom: 5px;
}

.table-filter .btn {
	height: 34px;
}

.table-filter label {
	font-weight: normal;
	margin-left: 10px;
}

.table-filter select, .table-filter input {
	display: inline-block;
	margin-left: 5px;
}

.filter-group select.form-control {
	width: 110px;
}

.filter-icon {
	float: right;
	margin-top: 7px;
}

.filter-icon i {
	font-size: 18px;
	opacity: 0.7;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 500px;
}

.product-detail-title {
	width: 500px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	text-align: left;
}

.product-detail-info {
	border: 1px solid #ddd;
	border-radius: 10px;
	padding: 15px;
}

table.table tr th:last-child {
	width: 80px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a button {
	width: 30px;
	height: 30px;
	color: #2196F3;
	border: 2px solid;
	border-radius: 30px;
	text-align: center;
}

table.table td a.view i {
	font-size: 22px;
	margin: 2px 0 0 1px;
}

table.table .avatar {
	vertical-align: middle;
	margin-right: 10px;
	height: 70px;
	width: 70px;
}

.status {
	font-size: 30px;
	margin: 2px 2px 0 0;
	display: inline-block;
	vertical-align: middle;
	line-height: 10px;
}

.text-success {
	color: #10c469;
}

.text-info {
	color: #62c9e8;
}

.text-warning {
	color: #FFC107;
}

.text-danger {
	color: #ff5b5b;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}

th {
	text-align: center;
}
</style>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</head>
<body>

	<!--Header Area Start-->
	<jsp:include page="Header.jsp" />
	<!--Header Area End-->

	<div class="container-xl">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-4">
							<h2>
								Order <b>Details</b>
							</h2>
						</div>
					</div>
				</div>


				<div class="table-filter">
					<div class="row">
						<div class="col-sm-12">
							<h4>Detail Order: #${order.orderId}</h4>
						</div>
						<div class="col-sm-12">
							<p>
								Status: <span class="status ${order.status == 'Processing' ? "
									text-warning" : order.status=='Shipping' ? "text-info" : "text-success"}">${order.status}</span>
							</p>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<h5>Shipping Address</h5>
							<div class="product-detail-info">
								<p class="font-weight-bold">${order.recipientName}</p>
								<p>Address: ${order.shippingAddress}</p>
								<p>Phone: ${order.recipientPhone}</p>
							</div>
						</div>
						<div class="col-sm-3">
							<h5>Payment Method</h5>
							<div class="product-detail-info row">
								<div class="col-md-12">
									<div class="d-inline ml-1">
										<img
											src="data:image/png;base64,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"
											style="height: 25px">
										<p class="d-inline">Paypal</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<h5>Note</h5>
							<div class="product-detail-info">
								<p>Nothing</p>
							</div>
						</div>
					</div>

					<table class="table table-striped table-hover"
						style="text-align: center">
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<c:if test="${orderStatus == 'Delivered'}">
									<th>Review</th>
								</c:if>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listOrderDetail}" var="orderDetail">
								<tr>
									<td><div class="product-detail-title">
											<a href="#"><img src="${orderDetail.book.image}"
												class="avatar" alt="Avatar">${orderDetail.book.title}</a>
										</div></td>
									<td>$${orderDetail.book.price}</td>
									<td>${orderDetail.quantity}</td>
									<td>$${orderDetail.quantity*orderDetail.book.price}</td>
									<c:choose>
										<c:when
											test="${orderStatus == 'Delivered' && orderDetail.reviewStatus == 'NotReview'}">
											<td><a href="#" class="view ratingProduct"
												onclick="writeRating(this)" data-target="#productModal"
												title="Quick view" data-toggle="modal"
												data-id="${orderDetail.book.bookId}"
												data-order-id="${orderDetail.id}"
												data-description="${orderDetail.book.description}"
												data-image="${orderDetail.book.image}"
												data-title="${orderDetail.book.title}"
												data-price="${orderDetail.book.price}"><i
													class="fa fa-comments"></i></a></td>
										</c:when>
										<c:when
											test="${orderStatus == 'Delivered' && orderDetail.reviewStatus != 'NotReview'}">
											<td><a href="#" style="font-size:25px"><i
													class="fa fa-check-circle"></i></a></td>
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="row">
						<div class="col-sm-8">
							<div class="shopingcart-bottom-area">
								<a class="left-shoping-cart" href="javascript:history.back()">GO
									BACK</a>
							</div>
						</div>
						<div class="col-sm-4 row">
							<div class="col-sm-12 row" style="margin-bottom: 20px">
								<div class="col-sm-4">Shipping cost:</div>
								<div class="col-sm-5"></div>
								<div class="col-sm-3" style="color: red">$0</div>
							</div>
							<div class="col-sm-12 row">
								<div class="col-sm-4">Total:</div>
								<div class="col-sm-5"></div>
								<div class="col-sm-3" style="color: red">$${order.totalPrice}</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-product">
						<div class="product-images" style="height: 400px">
							<div class="main-image images" style="height: 100%">
								<img id="imageProduct" alt="" src="img/quick-view.jpg"
									style="height: 100%; width: 100%">
							</div>
						</div>
						<div class="product-info">
							<h1 class="product-detail-title" id="titleProduct">Frame
								Princes Cut Diamond</h1>
							<div class="price-box">
								<p class="s-price">
									<span class="special-price"><span class="amount"
										id="priceProduct">$280.00</span></span>
								</p>
							</div>
							<div class="quick-desc" id="descriptionProduct">Lorem ipsum
								dolor sit amet, consectetur adipiscing elit. Nam fringilla augue
								nec est tristique auctor. Donec non est at libero vulputate
								rutrum. Morbi ornare lectus quis justo gravida semper. Nulla
								tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</div>
							<form action="ReviewProduct?orderId=${orderId}&orderStatus=${orderStatus}" method="POST" id="form">
								<input type="hidden" value="1" name="productId" id="productId">
								<input type="hidden" name="rating" id="rating">
								<input type="hidden" name="orderDetailId" value="" id="orderDetailId">
								<div class="quick-add-to-cart" , style="text-align: center">
									<span onmouseover="starmark(this)" onclick="starmark(this)"
										id="1one" style="font-size: 40px; cursor: pointer;"
										class="fa fa-star checked"></span> <span
										onmouseover="starmark(this)" onclick="starmark(this)"
										id="2one" style="font-size: 40px; cursor: pointer;"
										class="fa fa-star "></span> <span onmouseover="starmark(this)"
										onclick="starmark(this)" id="3one"
										style="font-size: 40px; cursor: pointer;" class="fa fa-star "></span>
									<span onmouseover="starmark(this)" onclick="starmark(this)"
										id="4one" style="font-size: 40px; cursor: pointer;"
										class="fa fa-star"></span> <span onmouseover="starmark(this)"
										onclick="starmark(this)" id="5one"
										style="font-size: 40px; cursor: pointer;" class="fa fa-star"></span>
									<br />
									<textarea style="margin-top: 5px;" class="form-control"
										rows="3" id="comment" placeholder="Enter your review"
										name="reviewText"></textarea>

									<button onclick="result()" type="submit"
										style="margin-top: 10px; margin-left: 5px;"
										class="btn btn-lg btn-success">Write Review</button>
								</div>
							</form>

						</div>
						<!-- .product-info -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function writeRating(item) {
			document.getElementById("imageProduct").src = item.dataset.image;
			document.getElementById("titleProduct").innerHTML = item.dataset.title;
			document.getElementById("priceProduct").innerHTML = item.dataset.price
					+ "$";
			document.getElementById("descriptionProduct").innerHTML = item.dataset.description;
			document.getElementById("productId").value = item.dataset.id;
			document.getElementById("orderDetailId").value = item.dataset.orderId;

		}

		var count;

		function starmark(item) {
			count = item.id[0];
			sessionStorage.starRating = count;
			var subid = item.id.substring(1);
			for (var i = 0; i < 5; i++) {
				if (i < count) {
					document.getElementById((i + 1) + subid).style.color = "orange";
				} else {
					document.getElementById((i + 1) + subid).style.color = "black";
				}

			}

		}

		function result() {
			//Rating : Count
			//Review : Comment(id)
			document.getElementById("rating").value = count;
			document.getElementById("form").submit();

		}
	</script>
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