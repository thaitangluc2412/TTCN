<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Shop || Witter Multipage Responsive Template</title>
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
        <jsp:include page="Header.jsp" />
        <!--Header Area End-->
		
		
        <!-- Breadcrumbs Area Start -->
        <div class="breadcrumbs-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					    <div class="breadcrumbs">
					       <h2>SHOP LEFT SIDEBAR</h2> 
					       <ul class="breadcrumbs-list">
						        <li>
						            <a title="Return to Home" href="index.html">Home</a>
						        </li>
						        <li>SHOP LEFT SIDEBAR</li>
						    </ul>
					    </div>
					</div>
				</div>
			</div>
		</div> 
		<!-- Breadcrumbs Area Start --> 
        <!-- Shop Area Start -->
        <div class="shopping-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="shop-widget">
                            <div class="shop-widget-top">
                                <aside class="widget widget-categories">
                                    <h2 class="sidebar-title text-center">CATEGORY</h2>
                                    <ul class="sidebar-menu">
                                        <li>
                                            <a href="#">
                                               <i class="fa fa-angle-double-right"></i>
                                                LEARNING                                          
                                                <span>(5)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                               <i class="fa fa-angle-double-right"></i>
                                                LIGHTING                                            
                                                <span>(8)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                              <i class="fa fa-angle-double-right"></i>
                                               LIVING ROOMS
                                                <span>(4)</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                               <i class="fa fa-angle-double-right"></i>
                                                LAMP                                           
                                                <span>(7)</span>
                                            </a>
                                        </li>
                                    </ul>
                                </aside> 
                                <aside class="widget shop-filter">
                                    <h2 class="sidebar-title text-center">PRICE SLIDER</h2>
                                    <div class="info-widget">
                                        <div class="price-filter">
                                            <div id="slider-range"></div>
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                                <div class="widget-buttom">
                                                    <input type="submit"  value="Filter"/>  
                                                    <input type="reset" value="CLEAR" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </aside>                            
                            </div>
                            <div class="shop-widget-bottom">
                                <aside class="widget widget-tag">
                                    <h2 class="sidebar-title">POPULAR TAG</h2>
                                    <ul class="tag-list">
                                        <li>
                                            <a href="#">e-book</a>
                                        </li>
                                        <li>
                                            <a href="#">writer</a>
                                        </li>
                                        <li>
                                            <a href="#">book’s</a>
                                        </li>
                                        <li>
                                            <a href="#">eassy</a>
                                        </li>
                                        <li>
                                            <a href="#">nice</a>
                                        </li>
                                        <li>
                                            <a href="#">author</a>
                                        </li>
                                    </ul>
                                </aside>
                                <aside class="widget widget-seller">
                                    <h2 class="sidebar-title">TOP SELLERS</h2>
                                    <div class="single-seller">
                                        <div class="seller-img">
                                            <img src="img/shop/1.jpg" alt="" />
                                        </div>
                                        <div class="seller-details">
                                            <a href="shop.html"><h5>Cold mountain</h5></a>
                                            <h5>$ 50.00</h5>
                                            <ul>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="single-seller">
                                        <div class="seller-img">
                                            <img src="img/shop/2.jpg" alt="" />
                                        </div>
                                        <div class="seller-details">
                                            <a href=""><h5>The historian</h5></a>
                                            <h5>$ 50.00</h5>
                                            <ul>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                                <li><i class="fa fa-star icolor"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </aside>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <div class="shop-tab-area">
                            <div class="shop-tab-list">
                                <div class="shop-tab-pill pull-left">
                                    <ul>
                                        <li class="active" id="left"><a data-toggle="pill" href="#home"><i class="fa fa-th"></i><span>Grid</span></a></li>
                                        <li><a data-toggle="pill" href="#menu1"><i class="fa fa-th-list"></i><span>List</span></a></li>
                                    </ul>
                                </div>
                                <div class="shop-tab-pill pull-right">
                                    <ul>
                                        <li class="product-size-deatils">
                                            <div class="show-label">
                                                <label>Show : </label>
                                                <select>
                                                    <option value="10" selected="selected">10</option>
                                                    <option value="09">09</option>
                                                    <option value="08">08</option>
                                                    <option value="07">07</option>
                                                    <option value="06">06</option>
                                                </select>
                                            </div>
                                        </li>
                                        <li class="product-size-deatils">
                                            <div class="show-label">
                                                <label><i class="fa fa-sort-amount-asc"></i>Sort by : </label>
                                                <select>
                                                    <option value="position" selected="selected">Position</option>
                                                    <option value="Name">Name</option>
                                                    <option value="Price">Price</option>
                                                </select>
                                            </div>
                                        </li>	
                                        <li class="shop-pagination"><a href="#">1</a></li>
                                        <li class="shop-pagination"><a href="#">2</a></li>
                                        <li class="shop-pagination"><a href="#"><i class="fa fa-caret-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div class="row tab-pane fade in active" id="home">
                                    <div class="shop-single-product-area">
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/1.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">East of eden</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/2.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">People of the book</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/3.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">The secret letter</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/4.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">Lone some dove</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/5.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">The historian</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/6.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">East of eden</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/7.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">Cold mountain</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/8.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">Twilight</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        <div class="col-md-4 hidden-sm">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="img/featured/1.jpg">
														<div class="price"><span>$</span>160</div>
													</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="#" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
															<a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
																<i class="fa fa-compress"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">East of eden</a>
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                    </div>
                                </div>
                                <div id="menu1" class="tab-pane fade">
                                    <div class="row">
                                        <div class="single-shop-product">
                                            <div class="col-xs-12 col-sm-5 col-md-4">
                                                <div class="left-item">
                                                    <a href="single-product.html" title="East of eden">
                                                        <img src="img/featured/1.jpg" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-7 col-md-8">
                                                <div class="deal-product-content">
                                                    <h4>
                                                        <a href="single-product.html" title="East of eden">East of eden</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span class="new-price">$ 140.00</span>
                                                        <span class="old-price">$ 120.00</span>
                                                    </div>
                                                    <div class="list-rating-icon">
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                                    <div class="availability">
                                                        <span>In stock</span>
                                                        <span><a href="cart.html">Add to cart</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-shop-product">
                                            <div class="col-xs-12 col-sm-5 col-md-4">
                                                <div class="left-item">
                                                    <a href="single-product.html" title="People of the book">
                                                        <img src="img/featured/2.jpg" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-7 col-md-8">
                                                <div class="deal-product-content">
                                                    <h4>
                                                        <a href="single-product.html" title="People of the book">People of the book</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span class="new-price">$ 140.00</span>
                                                        <span class="old-price">$ 120.00</span>
                                                    </div>
                                                    <div class="list-rating-icon">
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                                    <div class="availability">
                                                        <span>In stock</span>
                                                        <span><a href="cart.html">Add to cart</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-shop-product">
                                            <div class="col-xs-12 col-sm-5 col-md-4">
                                                <div class="left-item">
                                                    <a href="single-product.html" title="The secret letter">
                                                        <img src="img/featured/3.jpg" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-7 col-md-8">
                                                <div class="deal-product-content">
                                                    <h4>
                                                        <a href="single-product.html" title="The secret letter">The secret letter</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span class="new-price">$ 140.00</span>
                                                        <span class="old-price">$ 120.00</span>
                                                    </div>
                                                    <div class="list-rating-icon">
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                                    <div class="availability">
                                                        <span>In stock</span>
                                                        <span><a href="cart.html">Add to cart</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="single-shop-product">
                                            <div class="col-xs-12 col-sm-5 col-md-4">
                                                <div class="left-item">
                                                    <a href="single-product.html" title="Lone some dove">
                                                        <img src="img/featured/4.jpg" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-7 col-md-8">
                                                <div class="deal-product-content">
                                                    <h4>
                                                        <a href="single-product.html" title="Lone some dove">Lone some dove</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span class="new-price">$ 140.00</span>
                                                        <span class="old-price">$ 120.00</span>
                                                    </div>
                                                    <div class="list-rating-icon">
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <p>Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                                    <div class="availability">
                                                        <span>In stock</span>
                                                        <span><a href="cart.html">Add to cart</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Area End -->
        
		<!-- Footer Area Start -->
		<jsp:include page="Footer.jsp" />
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
    </body>
</html>