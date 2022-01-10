<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Checkout || Witter Multipage Responsive Template</title>
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

	<div class="container" style="margin-top: 50px">
		<div class="row">
			<div class="col-md-6">
				<p class="text-left font-weight-bold">Information payment.</p>
				<c:if test="${sessionScope.user == null}">
					<p class="font-weight-normal">
						You already have an account? <a href="">Login</a>
					</p>
				</c:if>
				<form>
					<div class="form-group">
						<input type="text" class="form-control" id="formGroupExampleInput"
							placeholder="Name">
					</div>
					<div class="row" style="margin-bottom: 15px">
						<div class="col-8">
							<input type="text" class="form-control" placeholder="Email">
						</div>
						<div class="col-4">
							<input type="text" class="form-control"
								placeholder="Phone Number">
						</div>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="formGroupExampleInput"
							placeholder="Address">
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputCity">City</label> <input type="text"
								class="form-control" id="inputCity">
						</div>
						<div class="form-group col-md-4">
							<label for="inputState">State</label> <select id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-2">
							<label for="inputZip">Zip</label> <input type="text"
								class="form-control" id="inputZip">
						</div>
					</div>
				</form>
				<label>Delivery Method</label>
				<div class="text-left border p-3 font-weight-light rounded"
					style="margin-bottom: 15px">
					<div class="row">
						<div class="col-md-6">
							<input class="input-radio" type="radio" checked="">
							<div class="d-inline ml-1">
								<img
									src="https://cuahangdongho.vn/wp-content/uploads/2020/05/pngtree-free-shipping-icon-png-image-1788614.jpg"
									style="height: 25px">
								<p class="d-inline">Giao hang tan noi</p>
							</div>
						</div>
						<div class="col-md-offset-3 col-md-3">
							<div class="d-inline text-right">Free shipping</div>
						</div>
					</div>
				</div>
				<label>Payment Method</label>
				<div class="text-left border p-3 font-weight-light rounded"
					style="margin-bottom: 15px">
					<div class="row">
						<div class="col-md-8">
							<input class="input-radio" type="radio" checked="">
							<div class="d-inline ml-1">
								<img
									src="https://icons-for-free.com/iconfiles/png/512/payment+paypal+icon-1320192250069986144.png"
									style="height: 25px">
								<p class="d-inline">Pay before shipping (Paypal)</p>
							</div>
						</div>
					</div>
				</div>
				<div style="margin-bottom: 15px; text-align: end">
					<button type="submit" class="btn-lg btn-primary center">Order</button>
				</div>
			</div>

			<div class="col-md-offset-1 col-md-5"
				style="border-left: 2px solid #ddd">
				<div class="cart-in-payment" style="border-bottom: 2px solid #ddd; margin-bottom: 20px">
				</div>

				<div class="payment" style="border-bottom: 2px solid #ddd; margin-bottom: 20px">
					<div class="row">
						<div class="col-md-4">
							<p>Prediction cost:</p>
						</div>
						<div class="col-md-offset-5"></div>
						<div class="col-md-3 subtotal">3000000</div>
					</div>
					<div class="row">
						<div class="col-md-4">
							<p>Shipping cost:</p>
						</div>
						<div class="col-md-offset-5"></div>
						<div class="col-md-3">Free</div>
					</div>
				</div>
				
				<div class="payment">
					<div class="row">
						<div class="col-md-4">
							<p>Subtotal:</p>
						</div>
						<div class="col-md-offset-5"></div>
						<div class="col-md-3 subtotal2">3000000</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>


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
	<script src="js/myCart.js"></script>
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