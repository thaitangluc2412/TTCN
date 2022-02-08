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
	
	<!--Header Area Start-->
	<jsp:include page="Header.jsp"></jsp:include>
	<!--Header Area End-->


	<div align="center">
		<h2 class="header-title">Order Overview</h2>
		<table>
		    <tr>
		        <td><b>Ordered By: </b></td>
		        <td>Thai Luc</td>
		    </tr>
		     <tr>
		        <td><b>Phone: </b></td>
		        <td>088985493</td>
		    </tr>
		     <tr>
		        <td><b>Address: </b></td>
		        <td>Cam Lo, Quang Tri</td>
		    </tr>
		    <tr>
		        <td><b>Order Status: </b></td>
		        <td>Waiting Confirm</td>
		    </tr>
		     <tr>
		        <td><b>Order Date: </b></td>
		        <td>05/01/2021</td>
		    </tr>
		    <tr>
		        <td><b>Recipient Method: </b></td>
		        <td>Paypal</td>
		    </tr>
		    <tr>
		        <td><b>Book Copies: </b></td>
		        <td>2</td>
		    </tr>
		     <tr>
		        <td><b>Total Amount: </b></td>
		        <td><fmt:formatNumber value="" type="currency"/>35</td>
		    </tr>
		
		    
		</table>
	</div>
	<p></p>
	<div align="center">
	   
	   <table border="1">
	       <tr>
	           <th>Index</th>
	           <th>Book Title</th>
	           <th>Author</th>
	           <th>Price</th>
	           <th>Quantity</th>
	           <th>Subtotal</th>
	       </tr>
	       <c:forEach items="${order.orderDetails}" var="orderDetail" varStatus="status">
	       <tr>
	           <td>${status.index + 1}</td>
	           <td>${orderDetail.book.title}</td>
	           <td>${orderDetail.book.author}</td>
	           <td><fmt:formatNumber value="${orderDetail.book.price}" type="currency"/></td>
	           <td>${orderDetail.quantity}</td>
	           <td><fmt:formatNumber value="${orderDetail.subtotal}" type="currency"/></td>
	       </tr>
	       </c:forEach>
	       <tr>
	           <td colspan="6" align="right">
	              <p>Subtotal: <fmt:formatNumber value="${order.subtotal}" type="currency"/></p>
	              <p>Tax: <fmt:formatNumber value="${order.tax}" type="currency"/></p>
	              <p>Shipping Fee: <fmt:formatNumber value="${order.shippingFee}" type="currency"/></p>
	              <p>TOTAL:<fmt:formatNumber value="${order.total}" type="currency"/></p>
	           </td>
	       </tr>
	   </table>
	 
	    <div class="shopingcart-bottom-area">
	      <p></p>
             <a class="left-shoping-cart" href="#">Confirm</a>
             <a class="left-shoping-cart" href="#">Delete</a>
          <p></p>
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