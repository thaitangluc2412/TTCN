<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
	
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Creat An Account || Witter Multipage Responsive Template</title>
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
   		<style>
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
        <!--Header Area Start-->
        <jsp:include page="Header.jsp" />
        <!--Header Area End-->
		
    <%--    <!-- Breadcrumbs Area Start -->
        <div class="breadcrumbs-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					    <div class="breadcrumbs">
					       <h2>LOGIN/REGISTER</h2> 
					       <ul class="breadcrumbs-list">
						        <li>
						            <a title="Return to Home" href="index.html">Home</a>
						        </li>
						        <li>Login</li>
						    </ul>
					    </div>
					</div>
				</div>
			</div>
		</div> 
		<!-- Breadcrumbs Area Start --> --%>
        <!-- Loging Area Start -->
        <div class="section-padding">
           <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        
                    </div>
                    <div class="col-md-4 col-sm-4">
                       <form action="UserController" class="create-account-form" method="post">
                            <h2 class="heading-title text-center">
                                REGISTER
                            </h2>
                            <input type="hidden" value="REGISTER" name="command">
                            <p class="form-row">
                                <input type="email" placeholder="Email address" name="email" value="${email}" pattern="[a-zA-Z0-9._\-]+@[a-z]{2,5}.[a-zA-Z]{2,4}" title="Not valid email" required>
                            </p>
                            <c:choose>
								<c:when test="${err == 'err'}">
									<div class="alert alert-danger">
									  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
									  This <strong>email</strong> already registered!
									</div>
								</c:when>
						</c:choose>
                            <p class="form-row">
                                <input type="password" placeholder="Password" name="password" id="pwNew" value="${password}"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*[^a-zA-Z0-9]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                            </p>
                            <p class="form-row">
                                <input type="password" placeholder="Comfirm Password" name="confirmpass" id="pwConfirm" value="${password}" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*[^a-zA-Z0-9]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                            </p>
                            <p id="pwConfirmErr" style="display:none;color:red;">*Password do not match!</p>
                            <p class="form-row">
                                <input type="text" placeholder="Your Name" name="name" value="${name}" required>
                            </p>
                             <p class="form-row">
                                <input type="text" placeholder="Address" name="address" value="${address}" required>
                            </p>
                            <p class="form-row">
                                <input type="text" placeholder="Phone Number" name="phoneNumber" value="${phoneNumber}" pattern="(?!.*[^0-9]).{10,15}" title="Must be number and the length between 10 to 15 digits." required>
                            </p> 
                            <p class="form-row">
                                <input type="text" placeholder="Account Number" name="accountNumber" value="${accountNumber}" pattern="(?!.*[^0-9]).{10,20}" title="Must be number and the length between 10 to 20 digits." required>
                            </p>
                            <div class="d-flex justify-content-center">					
                                <button name="submitcreate" id="submitcreate" type="submit" class="btn-default">
                                    <span>
                                        <i class="fa fa-user left"></i>
                                        REGISTER
                                    </span>
                                </button>
                                
                            </div>                          
                       </form>
                    </div>
                    <div class="col-md-4 col-sm-4">
                       
                    </div>
                </div>          
                </div>               
           </div>
        </div>
        <!-- Loging Area End -->
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
        <script src="js/myAccount.js"></script>
    </body>
</html>