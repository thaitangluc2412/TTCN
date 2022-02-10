<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

</head>
<div class="header-area">
	<div class="container header-container">
		<div class="row">
			<div class="col-md-2 col-sm-6 col-xs-6">
				<div class="header-logo">
					<a href="Home"> <img src="img/logo.png" alt="">
					</a>
				</div>
			</div>
			<div class="col-md-7 col-sm-12 hidden-xs">
				<div class="mainmenu text-center">
					<nav>
						<ul id="nav">
							<c:choose>
								<c:when test="${sessionScope.user.role == 'Admin'}">
									<li><a href="#">MANAGEMENT</a>
										<ul class="sub-menu">
											<li><a href="Admin?Management=Book">BOOK</a></li>
											<li><a href="Admin?Management=Category">CATEGORY</a></li>
											<li><a href="Admin?Management=Customer">CUSTOMER</a></li>
											<li><a href="Admin?Management=Author">AUTHOR</a></li>
											<li><a href="Admin?Management=Order">ORDER</a></li>
											<li><a href="Admin?Management=Review">REVIEW</a></li>
											<li><a href="Admin?Management=Revenue">REVENUE</a></li>
											<li><a href="Contact.jsp">CONTACT</a></li>
										</ul></li>
								</c:when>
								<c:when test="${sessionScope.user.role == 'Customer'}">
									<li><a href="Home">HOME</a></li>
									<li><a href="Shopping">SHOPPING</a></li>
									<li><a href="#">FEATURES</a>
										<ul class="sub-menu">
											<li><a href="Cart.jsp">MY CART</a></li>
											<li><a href="CheckoutController">CHECK OUT</a></li>
											<li><a href="MyOrder">MY ORDER</a>
											<li><a href="Contact.jsp">CONTACT</a></li>
										</ul></li>
								</c:when>
								<c:when test="${sessionScope.user.role == 'Author'}">
								</c:when>
								<c:when test="${sessionScope.user.role == 'Shipper'}">
								</c:when>
								<c:otherwise>
									<li><a href="Home">HOME</a></li>
									<li><a href="Shopping">SHOPPING</a></li>
								</c:otherwise>
							</c:choose>
							<c:if test="${sessionScope.user == null }">
								<li><a href="LoginController" class="ml-5"><button
											type="button" class="btn btn-primary">Login</button></a></li>
							</c:if>
							<c:if test="${sessionScope.user != null }">
								<li><a href="Logout" class="ml-5"><button type="button"
											class="btn btn-primary">Logout</button></a></li>
							</c:if>
						</ul>
					</nav>
				</div>
			</div>
			<div class="col-md-3 hidden-sm">
				<div class="header-right">
					<ul>
						<c:if test="${sessionScope.user != null}">
						    Welcome, ${sessionScope.user.name}
							<li><a href="Account?id=${sessionScope.user.userId}"><i
									class="flaticon-people"></i></a></li>
						</c:if>
						<c:if test="${sessionScope.user.role == 'Customer'}">
							<li class="shoping-cart"><a href="#"
								class="quantity-product"> <i class="flaticon-shop"></i> <span></span>
							</a>
								<div class="add-to-cart-product"></div></li>
						</c:if>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

</html>