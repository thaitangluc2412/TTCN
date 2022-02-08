<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shopping Cart || Witter Multipage Responsive Template</title>
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
.checked {
	color: orange;
}
</style>
</head>
<body>

	<!--Header Area Start-->
	<jsp:include page="Header.jsp" />
	<!--Header Area End-->


	<a href="#" title="Quick view" data-toggle="modal"
		data-target="#productModal" data-id="1"> <i class="fa fa-compress"></i>
	</a>

		<!-- Modal -->
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
							<div class="product-images">
								<div class="main-image images">
									<img alt="" src="img/quick-view.jpg">
								</div>
							</div>
							<div class="product-info">
								<h1>Frame Princes Cut Diamond</h1>
								<div class="price-box">
									<p class="s-price">
										<span class="special-price"><span class="amount">$280.00</span></span>
									</p>
								</div>
								<div class="quick-desc">Lorem ipsum dolor sit amet,
									consectetur adipiscing elit. Nam fringilla augue nec est
									tristique auctor. Donec non est at libero vulputate rutrum.
									Morbi ornare lectus quis justo gravida semper. Nulla tellus mi,
									vulputate adipiscing cursus eu, suscipit id nulla.</div>
								<form action="ReviewProduct" method="POST" id="form">
								    <input type="hidden" value="1" name="productId" id="productId">
								    <input type="hidden" name="rating" id="rating">
									<div class="quick-add-to-cart", style="text-align: center">
										<span onmouseover="starmark(this)" onclick="starmark(this)"
											id="1one" style="font-size: 40px; cursor: pointer;"
											class="fa fa-star checked"></span> <span
											onmouseover="starmark(this)" onclick="starmark(this)"
											id="2one" style="font-size: 40px; cursor: pointer;"
											class="fa fa-star "></span> <span
											onmouseover="starmark(this)" onclick="starmark(this)"
											id="3one" style="font-size: 40px; cursor: pointer;"
											class="fa fa-star "></span> <span
											onmouseover="starmark(this)" onclick="starmark(this)"
											id="4one" style="font-size: 40px; cursor: pointer;"
											class="fa fa-star"></span> <span onmouseover="starmark(this)"
											onclick="starmark(this)" id="5one"
											style="font-size: 40px; cursor: pointer;" class="fa fa-star"></span>
										<br />
										<textarea style="margin-top: 5px;" class="form-control"
											rows="3" id="comment" placeholder="Enter your review" name="reviewText"></textarea>

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
				alert("Rating : " + count + "\nReview : "
						+ document.getElementById("comment").value);
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