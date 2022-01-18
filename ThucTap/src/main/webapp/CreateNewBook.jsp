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
<script>
	var i = 1;
	function add() {
		i++;
		var new_chq_no = i;
		console.log(i);
		var new_input = "<select name='author"+new_chq_no+"'" +  "id=new_"+ new_chq_no+">"
				+ "<c:forEach items='${authors}' var='author'>"
				+ "<option value='${author.name}'>${author.name}</option>"
				+ "</c:forEach>" + "</select>";
		console.log('new_' + new_chq_no);
		$('#new_chq').append(new_input);
	}
	function remove() {
		var last_chq_no = i;
		if (last_chq_no > 1) {
			console.log('#new_' + last_chq_no);
			$('#new_' + last_chq_no).remove();
			$('#total_chq').val(last_chq_no - 1);
			i--;
		} else
			i = 1;
	}
</script>
</head>

<body>
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

	<!-- Add your site or application content here -->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->

	<div class="shopping-cart-area section-padding">

		<div class="container">
			<div class="section-title2">
				<h2 class="header-title">CREATE A NEW BOOK</h2>

			</div>

			<div class="row">
				<div class="col-md-12">
					<form action="SaveCreateNewBook">

						<div class="shop-select">
							<label>Category <span class="required">*</span></label> <select
								name="categoryId">
								<option>-- Chọn loại sách --</option>
								<c:forEach items="${categories}" var="category">
									<option value="${category.categoryId}">${category.getName()}</option>
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
							<label>Author <span class="required">*</span></label> 
							<select	name="author" data-placeholder="Author" multiple class="chosen-select"  tabindex="8">
								<c:forEach items="${authors}" var="author">
									<option value="${author.name}">${author.name}</option>
								</c:forEach>
							</select>
						</div> <br>
						<div class="country-select shop-select">
							<label>Publish Date</label>
							<div class="row">
								<div class="col-xs-4">
									<select name="day">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="19">20</option>
										<option value="20">21</option>
										<option value="21">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select>
								</div>
								<div class="col-xs-4">
									<select name="month">
										<option value="1">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
									</select>
								</div>
								<div class="col-xs-4">
									<select name="year">
										<option>1990</option>
										<option>1991</option>
										<option>1992</option>
										<option>1993</option>
										<option>1994</option>
										<option>1995</option>
										<option>1996</option>
										<option>1997</option>
										<option>1998</option>
										<option>1999</option>
										<option>2000</option>
										<option>2001</option>
										<option>2002</option>
										<option>2003</option>
										<option>2004</option>
										<option>2005</option>
										<option>2006</option>
										<option>2007</option>
										<option>2008</option>
										<option>2009</option>
										<option>2010</option>
										<option>2011</option>
										<option>2012</option>
										<option>2013</option>
										<option>2014</option>
										<option>2016</option>
										<option>2016</option>
										<option>2017</option>
										<option>2018</option>
										<option>2019</option>
										<option>2020</option>
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
								<textarea placeholder="Book Description" name="description"
									value="${description}"></textarea>
							</p>
						</div>

						<div class="shopingcart-bottom-area">
							<button type="submit" class="btn btn-default">Save</button>
							<a class="left-shoping-cart" href="#">Cancel</a>
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