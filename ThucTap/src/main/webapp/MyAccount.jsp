<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>About Us || Witter Multipage Responsive Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Place favicon.ico in the root directory -->
        <!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300' rel='stylesheet' type='text/css'>

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
        <link rel="stylesheet" href="venobox/venobox.css" type="text/css" media="screen" />
		<!-- nivo slider css -->
		<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen" />
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
		<!-- My Account Area Start -->
		<div class="my-account-area section-padding">
			<div class="container">
				<div class="section-title2">
					<h2>Procced to Checkout</h2>
					<p>Welcome to your account. Here you can manage all of your personal information and orders.</p>
				</div>
				<div class="row">
					<div class="addresses-lists">
						<div class="col-xs-12 col-sm-6 col-lg-6">
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingOne">
										<h4 class="panel-title">
											<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
												<i class="fa fa-building"></i>
											   <span>My Profile</span>
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
										<div class="panel-body">
										<form action="Account" method="POST" id="formInfo">
											<div class="coupon-info">
								
												<p class="required">*Required field</p>
													<p class="form-row"><b>Email</b>
														<input type="text" placeholder="email" value="${profile.email}" readonly/>
													</p>
													<p class="form-row"><b>Name</b>
														<input type="text" placeholder="name" value="${profile.name}" id="name">
													</p>
													<p class="form-row"><b>Address</b>
														<input type="text" placeholder="address" value="${profile.address}" id="address">
													</p>	
													<p class="form-row"><b>Phone number</b>
														<input type="text" placeholder="phone number" value="${profile.phoneNumber}" id="phone"/>
													</p>
													<p class="form-row"><b>Account number</b>
														<input type="text" placeholder="account number" value="${profile.accountNumber}" id="account" />
													</p>
													<button type="submit" name="Save"  class="btn button button-small" >
														<span>
															  Save
															<i class="fa fa-chevron-right"></i>
														</span>
													</button>
											</div>	
											</form>										
										</div>
									</div>
								</div>
								
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingThree">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
												<i class="fa fa-list-ol"></i>
												<span>My credit slips</span>
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
										<div class="panel-body">
											<div class="coupon-info">
												<h1 class="heading-title">Order history </h1>
												<p class="coupon-text">Here are the orders you've placed since your account was created.</p>
												<div class="order-history">
													<p class="alert">You have not placed any orders.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
						<div class="col-xs-12 col-sm-6 col-lg-6">
							<div class="myaccount-link-list">								
								<div class="panel panel-default">
									<div class="panel-heading" role="tab" id="headingTwo">
										<h4 class="panel-title">
											<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
												<i class="fa fa-key"></i>
												<span>Password</span>
											</a>
										</h4>
									</div>
									<form action="Account" method="POST" id="formPassword">
									<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
										<div class="panel-body">
											<div class="password-info">
													<p class="form-row"><b>Old password</b>
														<input type="password" placeholder="Old password" id="pwOld" value="${profile.userPassword}">
													</p>
													<p class="form-row"><b>New password</b>
														<input type="password" placeholder="New password" id="pwNew"><p id="pwNewErr" style="display:none;color:red;">*Still match old password</p>
													</p>	
													<p class="form-row"><b>Confirm password</b>
														<input type="password" placeholder="Confirm password" id="pwConfirm" name="updatePw" /><p id="pwConfirmErr" style="display:none;color:red;">*Do not match new password</p>
													</p>
													
													<button type="submit" name="Save"  class="btn button button-small" >
														<span>
															  Save
															<i class="fa fa-chevron-right"></i>
														</span>
													</button>
											</div>											
										</div>
									</div>
									</form>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="create-account-button pull-left">
							<a href="index.html" class="btn button button-small" title="Home">
								<span>
									<i class="fa fa-chevron-left"></i>
									  Home
								</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- My Account Area End -->
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
        <script src="js/confirmPassword.js"></script>
        
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