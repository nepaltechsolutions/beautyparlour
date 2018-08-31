<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spr" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/W3C/DTD HTML 4.01 Transitional/EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>BootStrap HTML5 CSS3 Theme</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">



<link rel="stylesheet" href="<c:url value='/naturevisitFiles/naturevisitFiles/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/naturevisitFiles/naturevisitFiles/css/normalize.css'/>">
<link rel="stylesheet"
	href="/naturevisitFiles/css/font-awesome.min.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/icomoon.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/owl.carousel.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/jquery-ui.min.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/bootstrap-select.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/scrollbar.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/jquery.mmenu.all.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/prettyPhoto.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/transitions.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/main.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/color.css">
<link rel="stylesheet"
	href="/naturevisitFiles/css/responsive.css">
<script
	src="/naturevisitFiles/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body class="tg-home tg-homevtwo">
	<!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http:/browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<!--************************************
				Loader Start
	*************************************-->
	<div class="loader">
		<div class="span">
			<div class="location_indicator"></div>
		</div>
	</div>
	<!--************************************
				Loader End
	*************************************-->
	<!--************************************
			Mobile Menu Start
	*************************************-->
	<nav id="menu">
	<ul>
		<li><a href="javascript:void(0);">Home</a>
			<ul>
				<li><a href="/naturevisit/index">Home ~ Modern</a></li>
				<li><a href="/naturevisit/indexv2">Home ~ Full Screen</a></li>
				<li><a href="/naturevisit/indexv3">Home ~ Creative</a></li>
				<li><a href="/naturevisit/indexv4">Home ~ Simple</a></li>
				<li><a href="/naturevisit/indexv5">Home ~ Video</a></li>
			</ul></li>
		<li><a href="/naturevisit/destinations">Destinations</a></li>
		<li><a href="javascript:void(0);">Listings</a>
			<div>
				<ul>
					<li><a href="/naturevisit/listingvone">list style one</a></li>
					<li><a href="/naturevisit/listingvtwo">list style two</a></li>
					<li><a href="/naturevisit/listingvthree">list style three</a></li>
					<li><a href="/naturevisit/listingvfour">list style four</a></li>
					<li><a href="/naturevisit/listingvfive">list style five</a></li>
					<li><a href="/naturevisit/listingvsix">list style six</a></li>
				</ul>
				<div class="tg-sliderarea">
					<h2>Popular Tours</h2>
					<div class="tg-trendingtripsslider tg-trendingtrips owl-carousel">
						<div class="item tg-trendingtrip">
							<figure> <a href="javascript:void(0);"> <img
								src="/naturevisitFiles/images/tours/img-05.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
						</div>
						<div class="item tg-trendingtrip">
							<figure> <a href="javascript:void(0);"> <img
								src="/naturevisitFiles/images/tours/img-06.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
						</div>
						<div class="item tg-trendingtrip">
							<figure> <a href="javascript:void(0);"> <img
								src="/naturevisitFiles/images/tours/img-07.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
						</div>
						<div class="item tg-trendingtrip">
							<figure> <a href="javascript:void(0);"> <img
								src="/naturevisitFiles/images/tours/img-07.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
						</div>
					</div>
				</div>
			</div></li>
		<li><a href="javascript:void(0);">Pages</a>
			<ul>
				<li><a href="/naturevisit/faqs">FAQ’s</a></li>
				<li><a href="/naturevisit/packages">Table</a></li>
				<li><a href="/naturevisit/aboutus">About Us</a></li>
				<li><a href="/naturevisit/contactus">Contact us</a></li>
				<li><a href="/naturevisit/billingdetail">Billing Detail</a></li>
				<li><a href="/naturevisit/404error">404 Error</a></li>
				<li><a href="/naturevisit/comingsoon">Coming Soon</a></li>
				<li><a href="/naturevisit/cart">cart</a></li>
				<li><a href="javascript:void(0);">Tours</a>
					<ul>
						<li><a href="/naturevisit/tourcatagory">Tour Catagory</a></li>
						<li><a href="/naturevisit/tourbookingdetail">Tour Detail</a></li>
						<li><a href="/naturevisit/tourpaymentdetail">Tour Payment</a></li>
					</ul></li>
			</ul></li>
		<li><a href="javascript:void(0);">Shop</a>
			<ul>
				<li><a href="/naturevisit/shop">Shop</a></li>
				<li><a href="/naturevisit/shopdetail">Shop Detail</a></li>
				<li><a href="/naturevisit/cart">Cart</a></li>
			</ul></li>
		<li><a href="javascript:void(0);">Blog</a>
			<ul>
				<li><a href="/naturevisit/blog">Blog</a></li>
				<li><a href="/naturevisit/blogdetail">Blog Detail</a></li>
			</ul></li>
	</ul>
	</nav>
	<!--************************************
			Mobile Menu End
	*************************************-->
	<!--************************************
			Wrapper Start
	*************************************-->
	<div id="tg-wrapper" class="tg-wrapper tg-haslayout">
		<!--************************************
				Header Start
		*************************************-->
		<header id="tg-header"
			class="tg-header tg-headervtwo tg-headerfixed tg-haslayout">
		<div class="container-fluid">
			<div class="row">
				<strong class="tg-logo"><a href="/naturevisit/index"><img
						src="/naturevisitFiles/images/logo2.png"
						alt="company logo here"></a></strong>
				<nav class="tg-infonav">
				<ul>
					<li><i><img
							src="/naturevisitFiles/images/icons/icon-01.png"
							alt="image destinations"></i><span>1-800-321-6543</span></li>
					<li><a id="tg-btnsignin" href="#tg-loginsingup">sign in</a></li>
					<li><a href="javascript:void(0);"><img
							src="/naturevisitFiles/images/icons/icon-03.png"
							alt="image destinations"></a>
						<div class="tg-cartitems">
							<div class="tg-cartlistitems">
								<h3>Shopping Cart</h3>
								<div class="tg-cartitem">
									<figure class="tg-itemimg"> <img
										src="/naturevisitFiles/images/products/img-11.jpg"
										alt="image description"></figure>
									<div class="tg-contentbox">
										<div class="tg-producthead">
											<em>x 2</em>
											<h4>
												<a href="javascript:void(0);">Switzerland – 12 Days<span>Hiking
														Tour</span></a>
											</h4>
										</div>
										<span>$600</span>
									</div>
								</div>
								<div class="tg-cartitem">
									<figure class="tg-itemimg"> <img
										src="/naturevisitFiles/images/products/img-11.jpg"
										alt="image description"></figure>
									<div class="tg-contentbox">
										<div class="tg-producthead">
											<em>x 2</em>
											<h4>
												<a href="javascript:void(0);">Switzerland – 12 Days<span>Hiking
														Tour</span></a>
											</h4>
										</div>
										<span>$600</span>
									</div>
								</div>
								<div class="tg-subtotal">
									<h2>Subtotal</h2>
									<span>$830</span>
								</div>
							</div>
							<div class="tg-btnarea">
								<a class="tg-btn" href="#"><span>view cart</span></a>
							</div>
						</div></li>
					<li><a href="#tg-search"><img
							src="/naturevisitFiles/images/icons/icon-04.png"
							alt="image destinations"></a></li>
				</ul>
				</nav>
				<div class="tg-navigationarea">
					<div class="tg-navigationholder">
						<nav id="tg-nav" class="tg-nav">
						<div class="navbar-header">
							<a href="#menu" class="navbar-toggle collapsed"> <span
								class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
								<span class="icon-bar"></span> <span class="icon-bar"></span>
							</a>
						</div>
						<div id="tg-navigation"
							class="collapse navbar-collapse tg-navigation">
							<ul>
								<li class="menu-item-has-children current-menu-item"><a
									href="javascript:void(0);">Home</a>
									<ul class="sub-menu">
										<li><a href="/naturevisit/index">Home ~ Modern</a></li>
										<li class="current-menu-item"><a
											href="/naturevisit/indexv2">Home ~ Full Screen</a></li>
										<li><a href="/naturevisit/indexv3">Home ~ Creative</a></li>
										<li><a href="/naturevisit/indexv4">Home ~ Simple</a></li>
										<li><a href="/naturevisit/indexv5">Home ~ Video</a></li>
									</ul></li>
								<li><a href="/naturevisit/destinations">destinations</a></li>
								<li class="menu-item-has-children menu-item-has-mega-menu"><a
									href="javascript:void(0);">listings</a>
									<div class="mega-menu">
										<ul>
											<li><a href="/naturevisit/listingvone">list style
													one</a></li>
											<li><a href="/naturevisit/listingvtwo">list style
													two</a></li>
											<li><a href="/naturevisit/listingvthree">list style
													three</a></li>
											<li><a href="/naturevisit/listingvfour">list style
													four</a></li>
											<li><a href="/naturevisit/listingvfive">list style
													five</a></li>
											<li><a href="/naturevisit/listingvsix">list style
													six</a></li>
										</ul>
										<div class="tg-sliderarea">
											<h2>Popular Tours</h2>
											<div
												class="tg-trendingtripsslider tg-trendingtrips owl-carousel">
												<div class="item tg-trendingtrip">
													<figure> <a href="javascript:void(0);"> <img
														src="/naturevisitFiles/images/tours/img-05.jpg"
														alt="image destinations">
														<div class="tg-hover">
															<span class="tg-stars"><span></span></span> <span
																class="tg-tourduration">7 Days</span> <span
																class="tg-locationname">Paris</span>
															<div class="tg-pricearea">
																<span>from</span>
																<h4>$600</h4>
															</div>
														</div>
													</a> </figure>
												</div>
												<div class="item tg-trendingtrip">
													<figure> <a href="javascript:void(0);"> <img
														src="/naturevisitFiles/images/tours/img-06.jpg"
														alt="image destinations">
														<div class="tg-hover">
															<span class="tg-stars"><span></span></span> <span
																class="tg-tourduration">7 Days</span> <span
																class="tg-locationname">Paris</span>
															<div class="tg-pricearea">
																<span>from</span>
																<h4>$600</h4>
															</div>
														</div>
													</a> </figure>
												</div>
												<div class="item tg-trendingtrip">
													<figure> <a href="javascript:void(0);"> <img
														src="/naturevisitFiles/images/tours/img-07.jpg"
														alt="image destinations">
														<div class="tg-hover">
															<span class="tg-stars"><span></span></span> <span
																class="tg-tourduration">7 Days</span> <span
																class="tg-locationname">Paris</span>
															<div class="tg-pricearea">
																<span>from</span>
																<h4>$600</h4>
															</div>
														</div>
													</a> </figure>
												</div>
												<div class="item tg-trendingtrip">
													<figure> <a href="javascript:void(0);"> <img
														src="/naturevisitFiles/images/tours/img-07.jpg"
														alt="image destinations">
														<div class="tg-hover">
															<span class="tg-stars"><span></span></span> <span
																class="tg-tourduration">7 Days</span> <span
																class="tg-locationname">Paris</span>
															<div class="tg-pricearea">
																<span>from</span>
																<h4>$600</h4>
															</div>
														</div>
													</a> </figure>
												</div>
											</div>
										</div>
									</div></li>
								<li class="menu-item-has-children"><a
									href="javascript:void(0);">pages</a>
									<ul class="sub-menu">
										<li><a href="/naturevisit/faqs">FAQ’s</a></li>
										<li><a href="/naturevisit/packages">Table</a></li>
										<li><a href="/naturevisit/aboutus">About Us</a></li>
										<li><a href="/naturevisit/contactus">Contact us</a></li>
										<li><a href="/naturevisit/billingdetail">Billing
												Detail</a></li>
										<li><a href="/naturevisit/404error">404 Error</a></li>
										<li><a href="/naturevisit/comingsoon">Coming Soon</a></li>
										<li><a href="/naturevisit/cart">cart</a></li>
										<li class="menu-item-has-children"><a
											href="javascript:void(0);">Tours</a>
											<ul class="sub-menu">
												<li><a href="/naturevisit/tourcatagory">Tour
														Catagory</a></li>
												<li><a href="/naturevisit/tourbookingdetail">Tour
														Detail</a></li>
												<li><a href="/naturevisit/tourpaymentdetail">Tour
														Payment</a></li>
											</ul></li>
									</ul></li>
								<li><a href="/naturevisit/shop">shop</a></li>
								<li><a href="/naturevisit/blog">blog</a></li>
							</ul>
						</div>
						</nav>
						<ul class="tg-socialicons">
							<li><a href="javascript:void(0);"><i
									class="icon-facebook-logo-outline"></i></a></li>
							<li><a href="javascript:void(0);"><i
									class="icon-instagram-social-outlined-logo"></i></a></li>
							<li><a href="javascript:void(0);"><i
									class="icon-twitter-social-outlined-logo"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</header>
		<!--************************************
				Header End
		*************************************-->
		<!--************************************
				Home Slider Start
		*************************************-->
		<div id="tg-homebannerslider" class="tg-homebannerslider tg-haslayout">
			<div id="tg-homeslider"
				class="tg-homeslider tg-homeslidervtwo owl-carousel tg-haslayout">
				<figure class="item"
					data-vide-bg="poster: /naturevisitFiles/images/slider/img-03.jpg"
					data-vide-options="position: 0% 50%"> <figcaption>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
							<div class="tg-slidercontent">
								<h1>Planning a Trip to London?</h1>
								<h2>You Choose the Adventure We make it happen</h2>
								<a class="tg-btn" href="javascript:void(0);"><span>Explore
										Tour</span></a>
							</div>
						</div>
					</div>
				</div>
				</figcaption> </figure>
				<figure class="item"
					data-vide-bg="poster: /naturevisitFiles/images/slider/img-02.jpg"
					data-vide-options="position: 0% 50%"> <figcaption>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
							<div class="tg-slidercontent">
								<h1>Planning a Trip to London?</h1>
								<h2>You Choose the Adventure We make it happen</h2>
								<a class="tg-btn" href="javascript:void(0);"><span>Explore
										Tour</span></a>
							</div>
						</div>
					</div>
				</div>
				</figcaption> </figure>
				<figure class="item"
					data-vide-bg="poster: /naturevisitFiles/images/slider/img-01.jpg"
					data-vide-options="position: 0% 50%"> <figcaption>
				<div class="container">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12 col-lg-7">
							<div class="tg-slidercontent">
								<h1>Planning a Trip to London?</h1>
								<h2>You Choose the Adventure We make it happen</h2>
								<a class="tg-btn" href="javascript:void(0);"><span>Explore
										Tour</span></a>
							</div>
						</div>
					</div>
				</div>
				</figcaption> </figure>
			</div>
			<div class="col-sm-6 col-md-6">
				<c:if test="${not empty errormessage}">
					<div class="newSpace">
						<div class="alert alert-danger">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">×</button>
							<span class="glyphicon glyphicon-hand-right"></span> <strong>Exception
								Message</strong>
							<hr class="message-inner-separator">
							<p>${errormessage}</p>
						</div>
					</div>
				</c:if>
			</div>

		<!--************************************
				Home Slider End
		*************************************-->
		<!--************************************
				Main Start
		*************************************-->
		<main id="tg-main" class="tg-main tg-haslayout"> <!--************************************
					Tranding Trips Start
			*************************************--> <section
			class="tg-sectionspace tg-haslayout">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="tg-sectionhead tg-sectionheadvtwo">
						<div class="tg-sectiontitle">
							<h2>Trending</h2>
						</div>
						<div class="tg-description">
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam consectetuer.</p>
						</div>
					</div>
				</div>
				<div class="tg-trendingtrips">
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-05.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<div class="tg-price">
											<del>$2,800</del>
											<h4>$2200</h4>
										</div>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">City Tours in
											Europe, Paris</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-06.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">Best of Canada
											Tours and Travel</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-07.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">Italy – 3 Days
											in Rome, Golden Gate</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-07.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">City Tours in
											Europe, Paris</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-09.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">Best of Canada
											Tours and Travel</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
						<div class="tg-trendingtrip">
							<figure> <a href="/naturevisit/tourbookingdetail"> <img
								src="/naturevisitFiles/images/tours/img-10.jpg"
								alt="image destinations">
								<div class="tg-hover">
									<span class="tg-stars"><span></span></span> <span
										class="tg-tourduration">7 Days</span> <span
										class="tg-locationname">Paris</span>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</a> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="/naturevisit/tourbookingdetail">Italy – 3 Days
											in Rome, Golden Gate</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Tranding Trips End
			*************************************--> <!--************************************
					Popular Destination Start
			*************************************--> <section class="tg-parallax"
			data-appear-top-offset="600" data-parallax="scroll"
			data-image-src="/naturevisitFiles/images/parallax/bgparallax-01.jpg">
		<div class="tg-sectionspace tg-haslayout">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
						<div class="tg-sectionhead">
							<div class="tg-sectiontitle">
								<h2>Popular Destinations for Honeymoon</h2>
							</div>
							<div class="tg-description">
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
									sed diam consectetuer adipiscing elit, sed diam nonummy.</p>
							</div>
						</div>
						<div id="tg-populardestinationslider"
							class="tg-populardestinationslider tg-populardestinations owl-carousel">
							<div class="item tg-populardestination">
								<figure> <a href="javascript:void(0);"><img
									src="/naturevisitFiles/images/tours/img-11.jpg"
									alt="image destinations"></a> <figcaption>
								<h3>
									<a href="javascript:void(0);">Paris</a>
								</h3>
								<div class="tg-description">
									<p>Beautiful City in the World</p>
								</div>
								</figcaption> </figure>
							</div>
							<div class="item tg-populardestination">
								<figure> <a href="javascript:void(0);"><img
									src="/naturevisitFiles/images/tours/img-12.jpg"
									alt="image destinations"></a> <figcaption>
								<h3>
									<a href="javascript:void(0);">Dubai</a>
								</h3>
								<div class="tg-description">
									<p>in the streets of London</p>
								</div>
								</figcaption> </figure>
							</div>
							<div class="item tg-populardestination">
								<figure> <a href="javascript:void(0);"><img
									src="/naturevisitFiles/images/tours/img-13.jpg"
									alt="image destinations"></a> <figcaption>
								<h3>
									<a href="javascript:void(0);">Istanbul</a>
								</h3>
								<div class="tg-description">
									<p>in the streets of London</p>
								</div>
								</figcaption> </figure>
							</div>
							<div class="item tg-populardestination">
								<figure> <a href="javascript:void(0);"><img
									src="/naturevisitFiles/images/tours/img-14.jpg"
									alt="image destinations"></a> <figcaption>
								<h3>
									<a href="javascript:void(0);">london</a>
								</h3>
								<div class="tg-description">
									<p>in the streets of London</p>
								</div>
								</figcaption> </figure>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Popular Tour End
			*************************************--> <!--************************************
					Top Destination Start
			*************************************--> <section
			class="tg-sectionspace tg-haslayout">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="tg-sectionhead tg-sectionheadvtwo">
						<div class="tg-sectiontitle">
							<h2>Top Destinations</h2>
						</div>
						<div class="tg-description">
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam consectetuer.</p>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="tg-themetabs">
						<ul class="tg-themetabnav">
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-01.png"
									alt="image description"> <strong>America</strong> <span>Statue
										of Liberty</span>
							</a></li>
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-02.png"
									alt="image description"> <strong>Australia</strong> <span>Sydney
										Opera House</span>
							</a></li>
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-03.png"
									alt="image description"> <strong>Italy</strong> <span>Colosseum</span>
							</a></li>
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-04.png"
									alt="image description"> <strong>London</strong> <span>Gib
										Ben</span>
							</a></li>
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-05.png"
									alt="image description"> <strong>India</strong> <span>Great
										Taj Mahal</span>
							</a></li>
							<li><a href="javascript:void(0);"> <img
									src="/naturevisitFiles/images/countrysign/img-06.png"
									alt="image description"> <strong>Russia</strong> <span>Saint
										Basil's Cathedral</span>
							</a></li>
						</ul>
						<div class="tg-themetabcontent">
							<div class="tg-topdestinations">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
										<div class="tg-topdestination">
											<figure> <a href="javascript:void(0);"
												class="tg-btnviewall">View All Tours</a> <a
												href="javascript:void(0);"><img
												src="/naturevisitFiles/images/tours/img-15.jpg"
												alt="image description"></a> <figcaption>
											<h2>
												<a href="javascript:void(0);">North America</a>
											</h2>
											<span class="tg-totaltours">7 Tours</span> </figcaption> </figure>
										</div>
									</div>
									<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
										<div class="tg-topdestination">
											<figure> <a href="javascript:void(0);"
												class="tg-btnviewall">View All Tours</a> <a
												href="javascript:void(0);"><img
												src="/naturevisitFiles/images/tours/img-16.jpg"
												alt="image description"></a> <figcaption>
											<h2>
												<a href="javascript:void(0);">Europe</a>
											</h2>
											<span class="tg-totaltours">11 Tours</span> </figcaption> </figure>
										</div>
										<div class="tg-topdestination">
											<figure> <a href="javascript:void(0);"
												class="tg-btnviewall">View All Tours</a> <a
												href="javascript:void(0);"><img
												src="/naturevisitFiles/images/tours/img-17.jpg"
												alt="image description"></a> <figcaption>
											<h2>
												<a href="javascript:void(0);">Africa</a>
											</h2>
											<span class="tg-totaltours">3 Tours</span> </figcaption> </figure>
										</div>
									</div>
									<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
										<div class="tg-topdestination">
											<figure> <a href="javascript:void(0);"
												class="tg-btnviewall">View All Tours</a> <a
												href="javascript:void(0);"><img
												src="/naturevisitFiles/images/tours/img-18.jpg"
												alt="image description"></a> <figcaption>
											<h2>
												<a href="javascript:void(0);">Istanbul</a>
											</h2>
											<span class="tg-totaltours">30 Tours</span> </figcaption> </figure>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Top Destination End
			*************************************--> <!--************************************
					Call To Action Start
			*************************************--> <section class="tg-parallax"
			data-appear-top-offset="600" data-parallax="scroll"
			data-image-src="/naturevisitFiles/images/parallax/bgparallax-04.jpg">
		<div class="tg-sectionspace tg-zerobottompadding tg-haslayout">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="tg-sectionhead tg-sectionheadvtwo">
							<div class="tg-sectiontitle">
								<h2>What makes these trips different?</h2>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-lg-push-2">
						<figure class="tg-videobox"> <img
							src="/naturevisitFiles/images/img-01.jpg"
							alt="image description"> <a class="tg-btnplay"
							href="https:/www.youtube.com/watch?v=wJF5NXygL4k"
							data-rel="prettyPhoto[instagram]"><i class="icon-play3"></i></a>
						</figure>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Call To Action End
			*************************************--> <!--************************************
					Our Guides Start
			*************************************--> <section
			class="tg-sectionspace tg-toppadding tg-haslayout">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="tg-sectionhead tg-sectionheadvtwo">
						<div class="tg-sectiontitle">
							<h2>Popular Tours</h2>
						</div>
						<div class="tg-description">
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam consectetuer</p>
						</div>
					</div>
					<div id="tg-populartoursslider"
						class="tg-populartoursslider tg-populartours tg-populartoursvtwo owl-carousel">
						<div class="item tg-populartour">
							<figure> <a href="javascript:void(0);"><img
								src="/naturevisitFiles/images/tours/img-01.jpg"
								alt="image destinations"></a> <span class="tg-descount">25%
								Off</span> </figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="javascript:void(0);">City Tours in Europe, Paris</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
								<div class="tg-populartourfoot">
									<div class="tg-durationrating">
										<span class="tg-tourduration">7 Days</span> <span
											class="tg-stars"><span></span></span> <em>(3 Review)</em>
									</div>
									<div class="tg-pricearea">
										<del>$2,800</del>
										<h4>$2,500</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="item tg-populartour">
							<figure> <a href="javascript:void(0);"><img
								src="/naturevisitFiles/images/tours/img-02.jpg"
								alt="image destinations"></a></figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="javascript:void(0);">Best of Canada Tours and
											Travel</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
								<div class="tg-populartourfoot">
									<div class="tg-durationrating">
										<span class="tg-tourduration">7 Days</span> <span
											class="tg-stars"><span></span></span> <em>(3 Review)</em>
									</div>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="item tg-populartour">
							<figure> <a href="javascript:void(0);"><img
								src="/naturevisitFiles/images/tours/img-03.jpg"
								alt="image destinations"></a></figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="javascript:void(0);">Italy – 3 Days in Rome,
											Golden Gate</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
								<div class="tg-populartourfoot">
									<div class="tg-durationrating">
										<span class="tg-tourduration">7 Days</span> <span
											class="tg-stars"><span></span></span> <em>(3 Review)</em>
									</div>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$1,430</h4>
									</div>
								</div>
							</div>
						</div>
						<div class="item tg-populartour">
							<figure> <a href="javascript:void(0);"><img
								src="/naturevisitFiles/images/tours/img-04.jpg"
								alt="image destinations"></a></figure>
							<div class="tg-populartourcontent">
								<div class="tg-populartourtitle">
									<h3>
										<a href="javascript:void(0);">Best of Canada Tours and
											Travel</a>
									</h3>
								</div>
								<div class="tg-description">
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
										elit, sed diam nonummy nibh...</p>
								</div>
								<div class="tg-populartourfoot">
									<div class="tg-durationrating">
										<span class="tg-tourduration">7 Days</span> <span
											class="tg-stars"><span></span></span> <em>(3 Review)</em>
									</div>
									<div class="tg-pricearea">
										<span>from</span>
										<h4>$600</h4>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Our Guides End
			*************************************--> <!--************************************
					Article Start
			*************************************--> <section
			class="tg-sectionspace tg-zerotoppadding tg-haslayout">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<div class="tg-sectionhead tg-sectionheadvtwo">
						<div class="tg-sectiontitle">
							<h2>Latest Articles</h2>
						</div>
						<div class="tg-description">
							<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
								sed diam consectetuer</p>
						</div>
					</div>
				</div>
				<div class="tg-posts">
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<article class="tg-post"> <figure> <a
							href="javascript:void(0);"> <img
							src="/naturevisitFiles/images/blog/img-01.jpg"
							alt="image description">
							<div class="tg-hover">
								<h3>Bungee Jumping Trip</h3>
								<time datetime="2017-06-08">Feb 22, 2017</time>
							</div>
						</a> </figure> </article>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<article class="tg-post"> <figure> <a
							href="javascript:void(0);"> <img
							src="/naturevisitFiles/images/blog/img-02.jpg"
							alt="image description">
							<div class="tg-hover">
								<h3>Bungee Jumping Trip</h3>
								<time datetime="2017-06-08">Feb 22, 2017</time>
							</div>
						</a> </figure> </article>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<article class="tg-post"> <figure> <a
							href="javascript:void(0);"> <img
							src="/naturevisitFiles/images/blog/img-03.jpg"
							alt="image description">
							<div class="tg-hover">
								<h3>Bungee Jumping Trip</h3>
								<time datetime="2017-06-08">Feb 22, 2017</time>
							</div>
						</a> </figure> </article>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<article class="tg-post"> <figure> <a
							href="javascript:void(0);"> <img
							src="/naturevisitFiles/images/blog/img-04.jpg"
							alt="image description">
							<div class="tg-hover">
								<h3>Bungee Jumping Trip</h3>
								<time datetime="2017-06-08">Feb 22, 2017</time>
							</div>
						</a> </figure> </article>
					</div>
				</div>
			</div>
		</div>
		</section> <!--************************************
					Article End
			*************************************--> </main>
		<!--************************************
				Main End
		*************************************-->
		<!--************************************
				Footer Start
		*************************************-->
		<footer id="tg-footer" class="tg-footer tg-haslayout">
		<div class="tg-fourcolumns">
			<div class="container">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<div class="tg-footercolumn tg-widget tg-widgettext">
							<div class="tg-widgettitle">
								<h3>About Travlu</h3>
							</div>
							<div class="tg-widgetcontent">
								<div class="tg-description">
									<p>Nunc cursus liero purs ac cogue arcu cursus ut sed vitae
										pulvinar massaidp nequetiam lore elerisque</p>
								</div>
								<span>1-800-321-6543</span> <a href="mailto:info@travlu.com">info@travlu.com</a>
								<ul class="tg-socialicons tg-socialiconsvtwo">
									<li><a href="javascript:void(0);"><i
											class="icon-facebook-logo-outline"></i></a></li>
									<li><a href="javascript:void(0);"><i
											class="icon-instagram-social-outlined-logo"></i></a></li>
									<li><a href="javascript:void(0);"><i
											class="icon-twitter-social-outlined-logo"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<div class="tg-footercolumn tg-widget tg-widgettravelunews">
							<div class="tg-widgettitle">
								<h3>Travelu News</h3>
							</div>
							<div class="tg-widgetcontent">
								<ul>
									<li><figure> <a href="javascript:void(0);"><img
											src="/naturevisitFiles/images/thumbnail/img-01.jpg"
											alt="image destinations"></a> </figure>
										<div class="tg-newcontent">
											<h4>
												<a href="javascript:void(0);">Bungee Jumping Trip</a>
											</h4>
											<div class="tg-description">
												<p>Nunc cursus libero purus congue arcu vitae pulvinar</p>
											</div>
											<time datetime="2017-06-06">Feb 22, 2017</time>
										</div></li>
									<li><figure> <a href="javascript:void(0);"><img
											src="/naturevisitFiles/images/thumbnail/img-02.jpg"
											alt="image destinations"></a> </figure>
										<div class="tg-newcontent">
											<h4>
												<a href="javascript:void(0);">Trip to White Castle</a>
											</h4>
											<div class="tg-description">
												<p>Nunc cursus libero purus congue arcu vitae pulvinar</p>
											</div>
											<time datetime="2017-06-06">Feb 22, 2017</time>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<div class="tg-footercolumn tg-widget tg-widgetdestinations">
							<div class="tg-widgettitle">
								<h3>Top Destinations</h3>
							</div>
							<div class="tg-widgetcontent">
								<ul>
									<li><a href="javascript:void(0);">Bayonne, Melbourne</a></li>
									<li><a href="javascript:void(0);">Greenville, New
											Jersey</a></li>
									<li><a href="javascript:void(0);">The Heights, London</a></li>
									<li><a href="javascript:void(0);">West Side, New York</a></li>
									<li><a href="javascript:void(0);">Upper East Side, New
											York</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
						<div class="tg-footercolumn tg-widget tg-widgetnewsletter">
							<div class="tg-widgettitle">
								<h3>Newsletter</h3>
							</div>
							<div class="tg-widgetcontent">
								<div class="tg-description">
									<p>Sign up for our mailing list to get latest updates and
										offers</p>
								</div>
								<form class="tg-formtheme tg-formnewsletter">
									<fieldset>
										<input type="email" name="email" class="form-control"
											placeholder="Your Email">
										<button type="submit">
											<img
												src="/naturevisitFiles/images/icons/icon-08.png"
												alt="image destinations">
										</button>
									</fieldset>
								</form>
								<span>We respect your privacy</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="tg-footerbar">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<p>Copyright &copy; 2017 Travlu. All rights reserved</p>
					</div>
				</div>
			</div>
		</div>
		</footer>
		<!--************************************
				Footer End
		*************************************-->
	</div>
	<!--************************************
			Wrapper End
	*************************************-->
	<!--************************************
			Search Start
	*************************************-->
	<div id="tg-search" class="tg-search">
		<button type="button" class="close">
			<i class="icon-cross"></i>
		</button>
		<form>
			<fieldset>
				<div class="form-group">
					<input type="search" name="search" class="form-control" value=""
						placeholder="search here">
					<button type="submit" class="tg-btn">
						<span class="icon-search2"></span>
					</button>
				</div>
			</fieldset>
		</form>
		<ul class="tg-destinations">
			<li><a href="javascript:void(0);">
					<h3>Europe</h3> <em>(05)</em>
			</a></li>
			<li><a href="javascript:void(0);">
					<h3>Africa</h3> <em>(15)</em>
			</a></li>
			<li><a href="javascript:void(0);">
					<h3>Asia</h3> <em>(12)</em>
			</a></li>
			<li><a href="javascript:void(0);">
					<h3>Oceania</h3> <em>(02)</em>
			</a></li>
			<li><a href="javascript:void(0);">
					<h3>North America</h3> <em>(08)</em>
			</a></li>
		</ul>
	</div>
	<!--************************************
			Search End
	*************************************-->
	<!--************************************
			Login Singup Start
	*************************************-->
	<div id="tg-loginsingup" class="tg-loginsingup"
		data-vide-bg="poster: /naturevisitFiles/images/singup-img.jpg"
		data-vide-options="position: 0% 50%">
		<div class="tg-contentarea tg-themescrollbar">
			<div class="tg-scrollbar">
				<button type="button" class="close">x</button>
				<div class="tg-logincontent">
					<nav id="tg-loginnav" class="tg-loginnav">
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">My Account</a></li>
						<li><a href="#">My Wishlist</a></li>
					</ul>
					</nav>
					<div class="tg-themetabs">
						<ul class="tg-navtbs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								data-toggle="tab">Already Registered</a></li>
							<li role="presentation"><a href="#profile" data-toggle="tab">New
									to Nature Visit ?</a></li>
						</ul>
						<div class="tg-tabcontent tab-content">
							<div role="tabpanel" class="tab-pane active fade in" id="home">

								<form id="login-form"
									action="<c:url value='../j_spring_security_check' />"
									method='POST'>
									<!-- 									<fieldset> -->

									<div class="col-sm-6 col-md-6">
										<c:if test="${not empty errormessage}">
											<div class="newSpace">
												<div class="alert alert-danger">
													<span class="glyphicon glyphicon-hand-right"></span> <strong>Exception
														Message</strong>
													<hr class="message-inner-separator">
													<p>${errormessage}</p>
												</div>
											</div>
										</c:if>
									</div>


									<div class="form-group">
										<label>Name or Email <sup>*</sup></label> <input
											id="login_username" name="j_username" class="form-control"
											type="text" placeholder="Enter Your Username here"
											autocapitalize="none" required>

									</div>
									<div class="form-group">
										<label>Password <sup>*</sup></label> <input
											id="login_password" class="form-control" type="password"
											name="j_password" placeholder="Password" required>

									</div>
									<div class="form-group">
										<div class="tg-checkbox">
											<input type="checkbox" name="remember" id="rememberpass">
											<label for="rememberpass">Remember Me</label>
										</div>
										<span><a href="#">Lost your password?</a></span>
									</div>
									<!-- 										<input type="submit" value="Log In" > -->
									<!-- 										<input type="submit" value="Log In" name="btn_submit" id="btn_submit" class="btn btn-success"> -->
									<button class="tg-btn tg-btn-lg">
										<span>Login</span>
									</button>
									<!-- 									</fieldset> -->
								</form>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="profile">
								<form class="tg-formtheme tg-formlogin">
									<fieldset>
										<div class="form-group">
											<label>Name or Email <sup>*</sup></label> <input type="text"
												name="firstname" class="form-control" placeholder="">
										</div>
										<div class="form-group">
											<label>Password <sup>*</sup></label> <input type="password"
												name="password" class="form-control" placeholder="">
										</div>
										<div class="form-group">
											<div class="tg-checkbox">
												<input type="checkbox" name="remember" id="remember">
												<label for="remember">Remember Me</label>
											</div>
											<span><a href="#">Lost your password?</a></span>
										</div>
										<!-- 										<input type="submit" value="Log In" name="btn_submit" id="btn_submit" class="btn btn-success"> -->
										<button class="tg-btn tg-btn-lg">
											<span>update profile</span>
										</button>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
					<div class="tg-shareor">
						<span>or</span>
					</div>
					<div class="tg-signupwith">
						<h2>Sign in With...</h2>
						<ul class="tg-sharesocialicon">
							<li class="tg-facebook"><a href="#"><i
									class="icon-facebook-1"></i><span>Facebook</span></a></li>
							<li class="tg-twitter"><a href="#"><i
									class="icon-twitter-1"></i><span>Twitter</span></a></li>
							<li class="tg-googleplus"><a href="#"><i
									class="icon-google4"></i><span>Google+</span></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--************************************
			Login Singup End
	*************************************-->
	<script
		src="/naturevisitFiles/js/vendor/jquery-library.js"></script>
	<script
		src="/naturevisitFiles/js/jquery-ui.min.js"></script>
	<script
		src="/naturevisitFiles/js/vendor/bootstrap.min.js"></script>
	<script
		src="https:/maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&language=en"></script>
	<script
		src="/naturevisitFiles/js/bootstrap-select.min.js"></script>
	<script
		src="/naturevisitFiles/js/jquery-scrolltofixed.js"></script>
	<script
		src="/naturevisitFiles/js/owl.carousel.min.js"></script>
	<script
		src="/naturevisitFiles/js/jquery.mmenu.all.js"></script>
	<script
		src="/naturevisitFiles/js/packery.pkgd.min.js"></script>
	<script
		src="/naturevisitFiles/js/jquery.vide.min.js"></script>
	<script
		src="/naturevisitFiles/js/scrollbar.min.js"></script>
	<script
		src="/naturevisitFiles/js/prettyPhoto.js"></script>
	<script
		src="/naturevisitFiles/js/countdown.js"></script>
	<script
		src="/naturevisitFiles/js/parallax.js"></script>
	<script
		src="/naturevisitFiles/js/gmap3.js"></script>
	<script
		src="/naturevisitFiles/js/main.js"></script>
	<script type="text/javascript">
		$( function() {
		  $( "#datepicker_departure, #datepicker_arrival" ).datepicker({
		  	inline: true,
		  	showOtherMonths: true
		  });
		});
	</script>

	<script>
  $('#radio2').click(function(){
   if ($(this).is(':checked')) {
     $('#datepicker_arrival').attr('readonly',false)
       .datepicker();
	  $("#datepicker_arrival").prop("disabled",false);
   } else {
     $('#datepicker_arrival').attr('readonly',true)
       .datepicker("destroy");
	    $("#datepicker_arrival").prop("disabled",true);
   }
  });
  
   $(".control").change(function(){
     if($(this).val()=="1"){
      $("#datepicker_arrival").attr("disabled","disabled");
     }else{
      $("#datepicker_arrival").removeAttr("disabled");
     }   
    }); 
  

</script>
</body>
</html>