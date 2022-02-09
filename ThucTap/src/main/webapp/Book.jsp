<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Management Book</title>
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

<!-- popup confirm -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<style>
.modal-confirm {
	color: #636363;
	width: 430px;
	margin: 30px auto;
}
.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
	text-align: center;
	font-size: 14px;
}
.modal-confirm .modal-header {
	border-bottom: none;
	position: relative;
	display : block; 
}
.modal-confirm .modal-footer {
	
    justify-content: center;
} 	 	
.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -10px;x
}
.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -2px;
}
.modal-confirm .modal-body {
	color: #999;
}
.modal-confirm .modal-footer {
	border: none;
	text-align: center;
	border-radius: 5px;
	font-size: 13px;
	padding: 10px 15px 25px;
}
.modal-confirm .modal-footer a {
	color: #999;
}
.modal-confirm .icon-box {
	width: 80px;
	height: 80px;
	margin: 0 auto;
	border-radius: 50%;
	z-index: 9;
	text-align: center;
	border: 3px solid #f15e5e;
}
.modal-confirm .icon-box i {
	color: #f15e5e;
	font-size: 46px;
	display: inline-block;
	margin-top: 13px;
}
.modal-confirm .btn {
	color: #fff;
	border-radius: 4px;
	background: #60c7c1;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	min-width: 120px;
	border: none;
	min-height: 40px;
	border-radius: 3px;
	margin: 0 5px;
	outline: none !important;
}
.modal-confirm .btn-info {
	background: #c1c1c1!important;
}
.modal-confirm .btn-info:hover, .modal-confirm .btn-info:focus {
	background: #a8a8a8;
}
.modal-confirm .btn-danger {
	background: #f15e5e!important;
}
.modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
	background: #ee3535;
}
.trigger-btn {
	display: inline-block;
}
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
	width: 20px;
}
.product-detail-title {
	width: 500px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
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

	<div class="table-title">
		<div class="row">
			<div class="col-sm-4">
				<h2 style="margin-left: 20px">
					Manage <b>Book</b>
				</h2>
			</div>
		</div>
	</div>

	<div class="d-flex justify-content-center">
		<form action="Admin?Management=Book" method="POST">
			<div class="input-group" style="width: 500px">
				<input type="search" class="form-control rounded w-75 p-3"
					placeholder="Search" aria-label="Search"
					aria-describedby="search-addon" name="searchBook"
					value="${searchBook}" />
				<button type="submit" class="btn btn-outline-primary">search</button>
			</div>
		</form>
		<div class="shopingcart-bottom-area">
			<a class="left-shoping-cart" href="CreateNewBook">CREATE NEW BOOK</a>
		</div>
	</div>


	<div class="container-xl">
		<div class="table-responsive">
			<div class="table-wrapper">
				<table class="table table-striped table-hover"
					style="text-align: center">
					<thead>
						<tr>
							<th>ID</th>
							<th>Product</th>
							<th>Author</th>
							<th>Category</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Last Updated</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listBook}" var="book">
							<tr>
								<td>${book.bookId}</td>
								<td><div class="product-detail-title">
										<a href="#"><img src="${book.image}" class="avatar"
											alt="Avatar">${book.title}</a>
									</div></td>
								<td><c:forEach items="${book.getBookUser()}" var="bookUser">
										${bookUser.getUser().getName()}.
									</c:forEach></td>
								<td>${book.categoryId.name}</td>
								<td>$${book.getPrice()}</td>
								<td>${book.getQuantity()}</td>
								<td>${book.getPublishDate()}</td>
								<td><a href="EditBook?bookId=${book.bookId}" class="view"
									title="View Details" data-toggle="tooltip"><i
										class="fa fa-edit "></i></a></td>
								<td><a href="#myModal" onclick="deleteBook(this)" class="trigger-btn" data-toggle="modal" data-id="${book.bookId}"><i
										class="flaticon-delete delete-in-cart"></i></a>
									<!-- Modal HTML -->
									<div id="myModal" class="modal fade">
										<div class="modal-dialog modal-confirm">
											<div class="modal-content">
												<div class="modal-header">
													<div class="icon-box">
														<i class="material-icons">&#xE5CD;</i>
													</div>
													<h4 class="modal-title">Are you sure?</h4>
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
												</div>
												<div class="modal-body">
													<p id="popupDelete" >Do you really want to delete book has BookID = ${book.bookId}</p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-info"
														data-dismiss="modal">Cancel</button>
													<a id="linkDelete" href="DeleteBook?bookId=${book.bookId}"><button type="button" class="btn btn-danger">Delete</button></a>
												</div>
											</div>
										</div>
									</div></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<nav class="d-flex justify-content-center"
					aria-label="Page navigation example">
					<ul class="pagination">
						<c:if test="${currentPage != 1}">
							<li class="page-item"><a class="page-link"
								href="Admin?Management=Book&page=1&searchBook=${searchBook}">
									First </a></li>
						</c:if>
						<c:forEach var="page" begin="${maxLeft}" end="${maxRight}">
							<li class="page-item ${page == currentPage ? "active" : "" } "><a
								class="page-link"
								href="Admin?Management=Book&page=${page}&searchBook=${searchBook}">
									${page} </a></li>
						</c:forEach>
						<c:if test="${currentPage != totalPages}">
							<li class="page-item"><a class="page-link"
								href="Admin?Management=Book&page=${totalPages}&searchBook=${searchBook}">
									Last </a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<script>
	
	function deleteBook(e){
		var id = e.dataset.id;
		document.getElementById('popupDelete').innerText =  `Do you really want to delete book has BookID = ` + id ;
		document.getElementById('linkDelete').href = `DeleteBook?bookId=` + id;
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