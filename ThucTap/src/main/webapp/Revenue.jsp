<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

.table-filter input {
	width: 200px;
	display: inline-block;
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
	width: 60px;
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

table.table td a.view {
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
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
	width: 30px;
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
</style>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</head>
<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<!--Header Area Start-->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->
	<div class="table-title">
		<div class="row">
			<div class="col-sm-4">
				<h2 style="margin-left: 20px">
					Manage <b>Revenue</b>
				</h2>
			</div>
		</div>
	</div>
	<div class="container-xl">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-filter">
					<div class="row">
						<div class="col-sm-9">
							<form action="Admin?Management=Order" method="POST">
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-search"></i>
								</button>
								<div class="filter-group">
									<label>Name</label> <input type="text" name="searchName"
										value="${searchName}" class="form-control">
								</div>
								<div class="filter-group">
									<label>Status</label> <select class="form-control"
										name="status">
										<c:choose>
											<c:when test="${status=='Any'}">
												<option value="Any" selected>Any</option>
											</c:when>
											<c:otherwise>
												<option value="Any">Any</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${status=='Delivered'}">
												<option value="Delivered" selected>Delivered</option>
											</c:when>
											<c:otherwise>
												<option value="Delivered">Delivered</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${status=='Shipping'}">
												<option value="Shipping" selected>Shipping</option>
											</c:when>
											<c:otherwise>
												<option value="Shipping">Shipping</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${status=='Processing'}">
												<option value="Processing" selected>Processing</option>
											</c:when>
											<c:otherwise>
												<option value="Processing">Processing</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
								<span class="filter-icon"><i class="fa fa-filter"></i></span>
							</form>
						</div>
					</div>
				</div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Customer</th>
							<th>Location</th>
							<th>Order Date</th>
							<th>Status</th>
							<th>Net Amount</th>
							<th>Confirm</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listOrder}" var="order">
							<tr>
								<td class="order-id">
									<p>${order.orderId}</p>
								</td>

								<td class="customer-name"><a href="#"><img
										src="https://www.w3schools.com/howto/img_avatar.png"
										class="avatar" alt="Avatar">${order.user.name}</a></td>
								<td>
									<p>${order.shippingAddress}</p>
								</td>


								<td>${order.orderDate}</td>

								<td><c:choose>
										<c:when test="${order.getStatus().toString() == 'Delivered'}">
											<span class="status text-success">&bull;</span>${order.status}
									</c:when>
										<c:when test="${order.getStatus().toString() == 'Processing'}">
											<span class="status text-warning">&bull;</span>${order.status}
									</c:when>
										<c:otherwise>
											<span class="status text-info">&bull;</span>${order.status}			
									</c:otherwise>
									</c:choose></td>

								<td>${order.totalPrice}</td>
								
								<td><c:choose>
										<c:when test="${order.getStatus().toString() == 'Processing'}">
											<a href="ConvertStatus?orderId=${order.orderId}&page=${currentPage}&searchName=${searchName}&status=${status}""><img
												src="img/remove.png" class="avatar" alt="Avatar"> </a>
										</c:when>
										<c:otherwise>
											<img src="img/tick.png" class="avatar" alt="Avatar">
										</c:otherwise>
									</c:choose></td>

								<td><a href="MyOrderDetail?orderId=${order.orderId}"
									class="view" title="View Details" data-toggle="tooltip"><i
										class="fa fa-info-circle"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav class="d-flex justify-content-center"
					aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${currentPage != 1}">
							<li class="page-item"><a class="page-link"
								href="Admin?Management=Order&page=1&searchName=${searchName}&status=${status}">
									First </a></li>
						</c:if>
						<c:forEach var="page" begin="${maxLeft}" end="${maxRight}">
							<li class="page-item ${page == currentPage ? "active" : "" } "><a
								class="page-link"
								href="Admin?Management=Order&page=${page}&searchName=${searchName}&status=${status}">
									${page} </a></li>
						</c:forEach>
						<c:if test="${currentPage != totalPages}">
							<li class="page-item"><a class="page-link"
								href="Admin?Management=Order&page=${totalPages}&searchName=${searchName}&status=${status}">
									Last </a></li>
						</c:if>
					</ul>
				</nav>
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