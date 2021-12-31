<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

</head>
<div class="header-area">
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-6">
				<div class="header-logo">
					<a href="Index.jsp"> <img src="img/logo.png" alt="">
					</a>
				</div>
			</div>
			<div class="col-md-9 col-sm-12 hidden-xs">
				<div class="mainmenu text-center">
					<nav>
						<ul id="nav">
							<li><a href="Index.jsp">HOME</a></li>
							<li><a href="BookController">SHOPPING PAGE</a></li>
							<li><a href="About.jsp">ABOUT AUTHOR</a></li>
							<c:choose>
								<c:when test="${user.role == 1}">
									<li><a href="#">MANAGEMENT</a>
										<ul class="sub-menu">
											<li><a href="Book.jsp">BOOK</a></li>
											<li><a href="Category.jsp">CATEGORY</a></li>
											<li><a href="Customer.jsp">CUSTOMER</a></li>
											<li><a href="Author.jsp">AUTHOR</a></li>
											<li><a href="Order.jsp">ORDER</a></li>
											<li><a href="Review.jsp">REVIEW</a></li>
										</ul></li>
								</c:when>
								<c:when test="${user.role == 2}">
									<li><a href="#">MANAGEMENT</a>
										<ul class="sub-menu">
											<li><a href="AuthorBook.jsp">TRACKING BOOK SELLING</a></li>
											<li><a href="AuthorProfit.jsp">MY EARNING</a></li>
										</ul></li>
								</c:when>
								<c:otherwise>
									<li><a href="#">FEATURES</a>
										<ul class="sub-menu">
											<li><a href="Cart.jsp">MY CART</a></li>
											<li><a href="Checkout.jsp">CHECK OUT</a></li>
											<li><a href="CustomerOrder.jsp">MY ORDER</a>
										</ul></li>
								</c:otherwise>
							</c:choose>
							<li><a href="Contact.jsp">CONTACT</a></li>
							<li><a href="Login.jsp" class="ml-5"><button
										type="button" class="btn btn-primary">Login</button></a></li>
							<%--          <li><a href="Index.jsp"><button type="button" class="btn btn-primary">Logout</button></a></li> --%>
						</ul>
					</nav>
				</div>
			</div>
			<div class="col-md-1 hidden-sm">
				<div class="header-right">
					<ul>
						<c:if test="${user.role == 1}">
							<li><a href="MyAccount.jsp"><i class="flaticon-people"></i></a>
							</li>
						</c:if>
						<li class="shoping-cart"><a href="#"> <i
								class="flaticon-shop"></i> <span>2</span>
						</a>
							<div class="add-to-cart-product">
								<div class="cart-product">
									<div class="cart-product-image">
										<a href="single-product.html"> <img src="img/shop/1.jpg"
											alt="">
										</a>
									</div>
									<div class="cart-product-info">
										<p>
											<span>1</span> x <a href="single-product.html">East of
												eden</a>
										</p>
										<a href="single-product.html">S, Orange</a> <span
											class="cart-price">$ 140.00</span>
									</div>
									<div class="cart-product-remove">
										<i class="fa fa-times"></i>
									</div>
								</div>
								<div class="cart-product">
									<div class="cart-product-image">
										<a href="single-product.html"> <img src="img/shop/1.jpg"
											alt="">
										</a>
									</div>
									<div class="cart-product-info">
										<p>
											<span>1</span> x <a href="single-product.html">East of
												eden</a>
										</p>
										<a href="single-product.html">S, Orange</a> <span
											class="cart-price">$ 140.00</span>
									</div>
									<div class="cart-product-remove">
										<i class="fa fa-times"></i>
									</div>
								</div>
								<div class="total-cart-price">
									<div class="cart-product-line fast-line">
										<span>Shipping</span> <span class="free-shiping">$10.50</span>
									</div>
									<div class="cart-product-line">
										<span>Total</span> <span class="total">$ 140.00</span>
									</div>
								</div>
								<div class="cart-checkout">
									<a href="Checkout.jsp">Check out <i
										class="fa fa-chevron-right"></i>
									</a>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Mobile Menu Start -->
<div class="mobile-menu-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12">
				<div class="mobile-menu">
					<nav id="dropdown">
						<ul>
							<li><a href="index.html">HOME</a></li>
							<li><a href="shop.html">FEATURED</a></li>
							<li><a href="shop.html">REVIEW BOOK</a></li>
							<li><a href="about.html">ABOUT AUTHOR</a></li>
							<li><a href="#">pages</a>
								<ul>
									<li><a href="about.html">About Us</a></li>
									<li><a href="cart.html">Cart Page</a></li>
									<li><a href="checkout.html">Check Out</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li><a href="login.html">Login</a></li>
									<li><a href="my-account.html">My Account</a></li>
									<li><a href="shop.html">Shopping Page</a></li>
									<li><a href="single-product.html">Single Shop Page</a></li>
									<li><a href="wishlist.html">Wishlist Page</a></li>
									<li><a href="404.html">404 Page</a></li>
								</ul></li>
							<li><a href="contact.html">CONTACT</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Mobile Menu End -->
</html>