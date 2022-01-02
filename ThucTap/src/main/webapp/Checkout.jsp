<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
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
    <link href='https://fonts.googleapis.com/css?family=Poppins:400,700,600,500,300' rel='stylesheet' type='text/css'>

    <!-- all css here -->
    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
    <link rel="stylesheet" href="venobox/venobox.css" type="text/css" media="screen"/>
    <!-- nivo slider css -->
    <link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css"/>
    <link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen"/>
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
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a
            href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Add your site or application content here -->
    <!--Header Area Start-->
    <jsp:include page="Header.jsp"></jsp:include>
    <!--Header Area End-->

    <!-- Breadcrumbs Area Start -->
    <jsp:include page="BreadCrumbs.jsp"></jsp:include>
    <!-- Breadcrumbs Area Start -->
    <!-- Check Out Area Start -->
    <div class="check-out-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                       aria-expanded="true" aria-controls="collapseOne">
                                        <span>1</span>
                                        Checkout Method
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel"
                                 aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6">
                                            <div class="checkout-collapse-inner">
                                                <h2 class="collapse-title">CHECKOUT AS A GUEST OR REGISTER</h2>
                                                <h4 class="collapse-sub-title">Register with us for future
                                                                               convenience:</h4>
                                                <form action="#">
                                                    <div class="check-register">
                                                        <input type="radio"/>
                                                        <label>Checkout as Guest</label>
                                                    </div>
                                                    <div class="check-register">
                                                        <input type="radio"/>
                                                        <label>Register</label>
                                                    </div>
                                                </form>
                                                <p>Register and save time!</p>
                                                <p>Register with us for future convenience:</p>
                                                <p>Fast and easy check out</p>
                                                <p>Easy access to your order history and status</p>
                                                <button class="btn btn-default btn-checkout">CONTINUE</button>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6">
                                            <div class="checkout-collapse-inner">
                                                <h2 class="collapse-title">LOGIN</h2>
                                                <h4 class="collapse-sub-title">Already registered?</h4>
                                                <p class="login-info">Please log in below:</p>
                                                <form action="#">
                                                    <div class="form-row">
                                                        <input type="email" placeholder="Email Address*"/>
                                                    </div>
                                                    <div class="form-row">
                                                        <input type="password" placeholder="Password*"/>
                                                    </div>
                                                    <div class="check-register login-button">
                                                        <a href="#">forgot your password?</a>
                                                        <input class="btn btn-default" type="submit" value="LOGIN"/>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        <span>2</span>
                                        Billing Information
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="shop-select">
                                                <label>Country <span class="required">*</span></label>
                                                <select>
                                                    <option value="volvo">Bangladesh</option>
                                                    <option value="saab">Algeria</option>
                                                    <option value="mercedes">Afghanistan</option>
                                                    <option value="audi">Ghana</option>
                                                    <option value="audi2">Albania</option>
                                                    <option value="audi3">Bahrain</option>
                                                    <option value="audi4">Colombia</option>
                                                    <option value="audi5">Dominican Republic</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="First Name *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Last Name *">
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="form-row">
                                                <input type="text" placeholder="Company Name">
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="form-row">
                                                <input type="text" placeholder="Street address">
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <p class="form-row">
                                                <input type="text" placeholder="Town / City">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="State / County *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Postcode / Zip">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Email Address *">
                                            </p>
                                        </div>
                                        <div class="col-md-6">
                                            <p class="form-row">
                                                <input type="text" placeholder="Phone *">
                                            </p>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="checbox-info">
                                                <input type="checkbox" id="cbox">
                                                Create an account?
                                            </label>
                                            <div id="cbox_info">
                                                <p>Create an account by entering the information below. If you are a
                                                   returning customer please login at the top of the page.</p>
                                                <p class="form-row form-row-phone">
                                                    <label>Phone<span class="required">*</span></label>
                                                    <input type="text" placeholder="Phone">
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        <span>3</span>
                                        Shopping Method
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="different-address">
                                        <div class="ship-different-title">
                                            <h3>
                                                <label>Ship to a different address?</label>
                                                <input type="checkbox" id="ship-box">
                                            </h3>
                                        </div>
                                        <div id="ship-box-info" class="row">
                                            <div class="col-md-12">
                                                <div class="shop-select">
                                                    <label>Country <span class="required">*</span></label>
                                                    <select>
                                                        <option value="volvo">Bangladesh</option>
                                                        <option value="saab">Algeria</option>
                                                        <option value="mercedes">Afghanistan</option>
                                                        <option value="audi">Ghana</option>
                                                        <option value="audi2">Albania</option>
                                                        <option value="audi3">Bahrain</option>
                                                        <option value="audi4">Colombia</option>
                                                        <option value="audi5">Dominican Republic</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="First Name *">
                                                </p>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Last Nane *">
                                                </p>
                                            </div>
                                            <div class="col-md-12">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Company Name">
                                                </p>
                                            </div>
                                            <div class="col-md-12">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Street address *">
                                                </p>
                                            </div>
                                            <div class="col-md-12">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Town / City *">
                                                </p>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="State / County *">
                                                </p>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Postcode / Zip *">
                                                </p>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Email Address *">
                                                </p>
                                            </div>
                                            <div class="col-md-6">
                                                <p class="form-row">
                                                    <input type="text" placeholder="Phone *">
                                                </p>
                                            </div>
                                        </div>
                                        <div class="order-notes">
                                            <label>Order Notes</label>
                                            <textarea
                                                    placeholder="Notes about your order, e.g. special notes for delivery."
                                                    rows="10" cols="30" id="checkout-mess"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                        <span>4</span>
                                        Payment Information
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingFour">
                                <div class="panel-body no-padding">
                                    <div class="payment-met">
                                        <form action="#" id="payment-form">
                                            <ul class="form-list">
                                                <li class="control">
                                                    <input type="radio" class="radio" title="Check / Money order"
                                                           name="payment[method]" id="p_method_checkmo">
                                                    <label for="p_method_checkmo">Check / Money order </label>
                                                </li>
                                                <li class="control">
                                                    <input type="radio" class="radio" title="Credit Card (saved)"
                                                           name="payment[method]" id="p_method_ccsave">
                                                    <label for="p_method_ccsave">Credit Card (saved) </label>
                                                </li>
                                            </ul>
                                        </form>
                                        <div class="buttons-set">
                                            <button class="btn btn-default">CONTINUE</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFive">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                       href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                        <span>5</span>
                                        Order Review
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFive" class="panel-collapse collapse" role="tabpanel"
                                 aria-labelledby="headingFive">
                                <div class="panel-body no-padding">
                                    <div class="order-review" id="checkout-review">
                                        <div class="table-responsive" id="checkout-review-table-wrapper">
                                            <table class="data-table" id="checkout-review-table">
                                                <thead>
                                                <tr>
                                                    <th rowspan="1">Product Name</th>
                                                    <th colspan="1">Price</th>
                                                    <th rowspan="1">Qty</th>
                                                    <th colspan="1">Subtotal</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td><h3 class="product-name">People of the book</h3></td>
                                                    <td><span class="cart-price"><span
                                                            class="check-price">$155.00</span></span></td>
                                                    <td>1</td>
                                                    <!-- sub total starts here -->
                                                    <td><span class="cart-price"><span
                                                            class="check-price">$155.00</span></span></td>
                                                </tr>
                                                <tr>
                                                    <td><h3 class="product-name">The secret garden</h3></td>
                                                    <td><span class="cart-price"><span
                                                            class="check-price">$222.00</span></span></td>
                                                    <td>1</td>
                                                    <!-- sub total starts here -->
                                                    <td><span class="cart-price"><span
                                                            class="check-price">$222.00</span></span></td>
                                                </tr>
                                                </tbody>
                                                <tfoot>
                                                <tr>
                                                    <td colspan="3">Subtotal</td>
                                                    <td><span class="check-price">$377.00</span></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">Shipping Handling (Flat Rate - Fixed)</td>
                                                    <td><span class="check-price">$10.00</span></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3"><strong>Grand Total</strong></td>
                                                    <td><strong><span class="check-price">$387.00</span></strong></td>
                                                </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div id="checkout-review-submit">
                                            <div class="cart-btn-3" id="review-buttons-container">
                                                <p class="left">Forgot an Item? <a href="#">Edit Your Cart</a></p>
                                                <button type="submit" title="Place Order" class="btn btn-default"><span>Place Order</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-offset-1 col-md-3">
                    <div class="checkout-widget">
                        <h2 class="widget-title">YOUR CHECKOUT PROGRESS</h2>
                        <ul>
                            <li><a href="#"><i class="fa fa-minus"></i> Billing Address</a></li>
                            <li><a href="#"><i class="fa fa-minus"></i> Shipping Address</a></li>
                            <li><a href="#"><i class="fa fa-minus"></i> Shipping Method</a></li>
                            <li><a href="#"><i class="fa fa-minus"></i> Payment Method</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Check Out Area End -->
    <!-- Our Team Area Start -->
    <div class="our-team-area">
        <h2 class="section-title">OUR WRITER</h2>
        <div class="container">
            <div class="row">
                <div class="team-list indicator-style">
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/1.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">rokan tech</a>
                                <p>WRITER</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/2.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">mirinda</a>
                                <p>AUTHOR</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/3.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">jone doe</a>
                                <p>WRITER</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/4.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">nick kon</a>
                                <p>WRITER</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/2.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">mirinda</a>
                                <p>AUTHOR</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="single-team-member">
                            <a href="#">
                                <img src="img/about/team/1.jpg" alt="">
                            </a>
                            <div class="member-info">
                                <a href="#">rokan tech</a>
                                <p>WRITER</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Our Team Area End -->
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