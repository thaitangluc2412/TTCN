<%@page import="java.io.Console"%>
<%@page import="bean.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home One || Witter Multipage Responsive Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/chosen2.css">
        
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min2.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style2.css">

<!-- Style -->
<link rel="stylesheet" href="css/style.css">
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
	<!-- Add your site or application content here -->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->

	<div class="shopping-cart-area section-padding">

		<div class="container">
			<div class="section-title2">
				<h2 class="header-title">EDIT A BOOK</h2>

			</div>

			<div class="row">
				<div class="col-md-12">
					<form action="SaveEditBook">
						<div class="shop-select">
							<label>BookId<span class="required">*</span></label>
							<p class="form-row"><input type="text" name="bookId" value="${bookId}" readonly><br><br></p>
						</div>
							<div class="shop-select">
								<label>Category <span class="required">*</span></label> <select
									name="categoryId">
									<c:forEach items="${categories}" var="category">
										<c:choose>
											<c:when test="${category.getName()==categoryPre.getName()}">
												<option value="${category.categoryId}" selected>${category.getName()}</option>
											</c:when>
											<c:otherwise>
												<option value="${category.categoryId}">${category.getName()}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</select>
							</div>
							<div class="shop-select">
								<label>Title <span class="required">*</span></label>
								<p class="form-row">
									<input type="text" placeholder="Title" name="title"
										value="${title}">
								</p>
							</div>
							<!-- <div class="shop-select">
							<label>Author <span class="required">*</span></label>
					List<User> users = (List<User>) request.getAttribute("authors");				%>
							<select name="author">
								<c:forEach items="${authors}" var="author">
									<option value="${author.name}">${author.name}</option>
								</c:forEach>
							</select>
							<button type="button" onclick="add()">Add</button>
							<button type="button" onclick="remove()">remove</button>
							<br> <br>
							<div id="new_chq"></div>
						</div>  -->
							<div class="shop-select">
								<label>Author <span class="required">*</span></label> <select
									name="author" data-placeholder="Author" multiple
									class="chosen-select" tabindex="8">
									<c:forEach items="${authors}" var="author">
										<option value="${author.name}">${author.name}</option>
									</c:forEach>
									<c:forEach items="${authorsPre}" var="author">
										<option value="${author.name}" selected>${author.name}</option>
									</c:forEach>
								</select>
							</div>
							<br>
							<div class="country-select shop-select">
								<label>Publish Date</label>
								<div class="row">
									<div class="col-xs-4">
										<select name="day">
											<c:forEach var="i" begin="1" end="31">
												<c:choose>
													<c:when test="${i==day}">
														<option value="${i}" selected>${i}</option>
													</c:when>
													<c:otherwise>
														<option value="${i}">${i}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
									<div class="col-xs-4">
										<select name="month">
											<c:choose>
												<c:when test="${1==month}">
													<option value="1" selected>January</option>
												</c:when>
												<c:otherwise>
													<option value="1">January</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${2==month}">
													<option value="2" selected>February</option>
												</c:when>
												<c:otherwise>
													<option value="2">February</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${3==month}">
													<option value="3" selected>March</option>
												</c:when>
												<c:otherwise>
													<option value="3">March</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${4==month}">
													<option value="4" selected>April</option>
												</c:when>
												<c:otherwise>
													<option value="4">April</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${5==month}">
													<option value="5" selected>May</option>
												</c:when>
												<c:otherwise>
													<option value="5">May</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${6==month}">
													<option value="6" selected>June</option>
												</c:when>
												<c:otherwise>
													<option value="6">June</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${7==month}">
													<option value="7" selected>July</option>
												</c:when>
												<c:otherwise>
													<option value="7">July</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${8==month}">
													<option value="8" selected>August</option>
												</c:when>
												<c:otherwise>
													<option value="8">August</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${9==month}">
													<option value="9" selected>September</option>
												</c:when>
												<c:otherwise>
													<option value="9">September</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${10==month}">
													<option value="10" selected>October</option>
												</c:when>
												<c:otherwise>
													<option value="10">October</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${11==month}">
													<option value="11" selected>November</option>
												</c:when>
												<c:otherwise>
													<option value="11">November</option>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${12==month}">
													<option value="12" selected>December</option>
												</c:when>
												<c:otherwise>
													<option value="12">December</option>
												</c:otherwise>
											</c:choose>
										</select>
									</div>
									<div class="col-xs-4">
										<select name="year">
											<c:forEach var="i" begin="1990" end="2020">
												<c:choose>
													<c:when test="${i==year}">
														<option value="${i}" selected>${i}</option>
													</c:when>
													<c:otherwise>
														<option value="${i}">${i}</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<div class="shop-select">
								<label>Image <span class="required">*</span></label>
								<div class="input-group mb-3">
									<input type="text" class="form-control" id="inputGroupFile02"
										name="image" value="${image}">
								</div>
							</div>
							<br>
							<div class="shop-select">
								<label>Quantity<span class="required">*</span></label>
								<p class="form-row">
									<input type="text" placeholder="Quantity" name="quantity"
										value="${quantity}">
								</p>
							</div>
							<p></p>
							<div class="shop-select">
								<label>Price <span class="required">*</span></label>
								<p class="form-row">
									<input type="text" placeholder="Price" name="price"
										value="${price}">
								</p>
							</div>
							<div class="shop-select">
								<label>Description </label>
								<p class="form-row order-notes">
									<textarea placeholder="Book Description" name="description">${description}</textarea>
								</p>
							</div>

							<div class="shopingcart-bottom-area">
								<button type="submit" class="btn btn-default">Save</button>
								<a class="left-shoping-cart" href="javascript:history.back()">GO BACK</a>
							</div>
						</div>
				</div>
			</div>
			</form>

		</div>
	</div>
	</div>
	</div>




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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chosen.jquery.min.js"></script>
	<script src="js/main2.js"></script>
</body>

</html>