<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title>Heaven Market</title>
<meta charset="utf-8">
<meta name="keywords"
	content="html5 template, best html5 template, best html template, html5 basic template, multipurpose html5 template, multipurpose html template, creative html templates, creative html5 templates" />
<meta name="description"
	content="eMarket is a powerful Multi-purpose HTML5 Template with clean and user friendly design. It is definite a great starter for any eCommerce web project." />
<meta name="author" content="Magentech">
<meta name="robots" content="index, follow" />

<!-- Mobile specific metas
    ============================================ -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicon
    ============================================ -->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/user/image/ico/16x16.png" />


<!-- Libs CSS
    ============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/css/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/resources/user/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/lib.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/jquery-ui/jquery-ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/js/minicolors/miniColors.css"
	rel="stylesheet">

<!-- Theme CSS
    ============================================ -->
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so_searchpro.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so_megamenu.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-categories.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-listing-tabs.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/themecss/so-newletter-popup.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/user/css/footer/footer1.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/header/header1.css"
	rel="stylesheet">
<link id="color_scheme"
	href="${pageContext.request.contextPath}/resources/user/css/theme.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/user/css/responsive.css"
	rel="stylesheet">

<!-- Google web fonts
    ============================================ -->
<link
	href='https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700'
	rel='stylesheet' type='text/css'>
<style type="text/css">
body {
	font-family: 'Roboto', sans-serif
}
</style>

<script>
	function validatEemail() {
	    var x = document.myform.email.value;
	    var atposition = x.indexOf("@");
	    var dotposition = x.lastIndexOf(".");
	    if (atposition < 1 || dotposition < (atposition + 2)
	            || (dotposition + 2) >= x.length) {
	        alert("Please enter a valid e-mail address.");
	        return false;
	    }
	}
</script>

</head>

<body class="common-home res layout-1">

	<div id="wrapper" class="wrapper-fluid banners-effect-5">


		<!-- Header Container  -->
		<header id="header" class=" typeheader-1">


			<!-- Header center -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<!-- Logo -->
						<div class="navbar-logo col-lg-2 col-md-2 col-sm-12 col-xs-12">
							<div class="logo">
								<a href="${pageContext.request.contextPath}/user/home"><img
									src="${pageContext.request.contextPath}/resources/user/image/catalog/logoheavenw.png" width="200px" height="50px"
									title="Your Store" alt="Your Store" /></a>
							</div>
						</div>
						<!-- //end Logo -->

						<!-- Main menu -->
						<div class="main-menu col-lg-6 col-md-7 ">
							<div class="responsive so-megamenu megamenu-style-dev">
								<nav class="navbar-default">
									<div class=" container-megamenu  horizontal open ">
										<div class="navbar-header">
											<button type="button" id="show-megamenu"
												data-toggle="collapse" class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<div class="megamenu-wrapper">
											<span id="remove-megamenu" class="fa fa-times"></span>
											<div class="megamenu-pattern">
												<div class="container-mega">
													<ul class="megamenu" data-transition="slide"
														data-animationtime="250">
														<li class="home hover"><a
															href="${pageContext.request.contextPath}/user/home"></a>
														</li>

													</ul>

												</div>
											</div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<!-- //end Main menu -->

						<div class="middle-right col-lg-4 col-md-3 col-sm-6 col-xs-8">
								<c:choose>
									<c:when test="${empty pageContext.request.userPrincipal.name }">
										<div class="signin-w  hidden-sm hidden-xs">
											<ul class="signin-link blank">
												<li class="log login"><a
													class="link-lg" href="${pageContext.request.contextPath}/account/register"> <b>SIGN UP</b></a>&ensp; | &ensp;<a
													href="${pageContext.request.contextPath}/account/login"><b>LOGIN</b> </a></li>
											</ul>
										</div>
									</c:when>
								<c:otherwise>
									<div class="signin-w  hidden-sm hidden-xs">
										<ul class="signin-link blank">
											<li class="log login"><b>HELLO </b> <a
												class="link-lg" href="${pageContext.request.contextPath}/user/myaccount"> ${pageContext.request.userPrincipal.name } </a>&ensp; | &ensp;<a
												href="${pageContext.request.contextPath}/account/logout"> <b>LOGOUT</b> </a></li>
										</ul>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<!-- //Header center -->

			<!-- Header Bottom -->
			<div class="header-bottom hidden-compact">
				<div class="container">
					<div class="row">

						<div class="bottom1 menu-vertical col-lg-2 col-md-3 col-sm-3">
							<div class="responsive so-megamenu megamenu-style-dev ">
								<div class="so-vertical-menu ">
									<nav class="navbar-default">

										<div class="container-megamenu vertical">
											<div id="menuHeading">
												<div class="megamenuToogle-wrapper">
													<div class="megamenuToogle-pattern">
														<div class="container">
															<div>
																<span></span> <span></span> <span></span>
															</div>
															All Categories
														</div>
													</div>
												</div>
											</div>

											<div class="navbar-header">
												<button type="button" id="show-verticalmenu"
													data-toggle="collapse" class="navbar-toggle">
													<i class="fa fa-bars"></i> <span> All Categories </span>
												</button>
											</div>
											<div class="vertical-wrapper">
												<span id="remove-verticalmenu" class="fa fa-times"></span>
												<div class="megamenu-pattern">
													<div class="container-mega">
														<ul class="megamenu">
															<c:forEach items="${sessionScope.categories }" var="item">
																<li class="item-vertical">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath}/user/category/${item.categoryId}" class="clearfix">
																		 <span>${item.name }</span>
																	</a>
																</li>
															</c:forEach>													
														</ul>
													</div>
												</div>
											</div>
										</div>
									</nav>
								</div>
							</div>

						</div>

						<!-- Search -->
						<div class="bottom2 col-lg-7 col-md-6 col-sm-6">
							<div class="search-header-w">
								<div class="icon-search hidden-lg hidden-md hidden-sm">
									<i class="fa fa-search"></i>
								</div>
								<div id="sosearchpro" class="sosearchpro-wrapper so-search ">
									<form method="GET" action="${pageContext.request.contextPath}/user/category">
										<div id="search0" class="search input-group form-group">
											<div
												class="select_category filter_type  icon-select hidden-sm hidden-xs">
												<select class="no-border" name="category_id">
													<option value="0">All Categories</option>
													<c:forEach items="${sessionScope.categories }" var="item">
														<option value="${item.categoryId}">${item.name }</option>
													</c:forEach>
												</select>
											</div>
											
											<input class="autosearch-input form-control" type="text"
												value="" size="50" autocomplete="off"
												placeholder="Keyword here..." name="keyword"> <span
												class="input-group-btn">
											<input type="hidden" name="sort_by" value="" />	
												<button type="submit" class="button-search btn btn-primary"
													name="submit_search">
													<i class="fa fa-search"></i>
												</button>
											</span>
										</div>
										
									</form>
								</div>
							</div>
						</div>
						<!-- //end Search -->

						<!-- Secondary menu -->
						<div class="bottom3 col-lg-3 col-md-3 col-sm-3">


							<!--cart-->
							<div class="shopping_cart">
								<div id="cart" class="btn-shopping-cart">
									<a data-loading-text="Loading... "
										class="btn-group top_cart dropdown-toggle"
										data-toggle="dropdown" aria-expanded="true">
										<div class="shopcart">
											<span class="icon-c"> <i class="fa fa-shopping-cart"></i>
											</span>
											<div class="shopcart-inner">
												<span class="total-shopping-cart cart-total-full"> <span
													class="items_cart">
													<c:choose>
														<c:when test="${empty sessionScope.cart.size() }">0</c:when>
														<c:when test="${not empty sessionScope.cart.size() }">${sessionScope.cart.size()}</c:when>
													</c:choose>	<c:if test=""> 0</c:if>
													</span>
											</div>
										</div>
									</a>
									
									<c:choose>
										<c:when test="${empty sessionScope.cart.size() }">
										<ul class="dropdown-menu pull-right shoppingcart-box"
										role="menu">
										<li>
											<table class="table table-striped">
												<tbody>
													<tr>
														<td class="text-center" colspan="2"><h1><span class="fa fa-thumbs-o-up" style="color: green"></span></h1> </td>
													</tr>
													<tr>
														<td class="text-center" colspan="2">No Products Yet</td>
													</tr>
												</tbody>
											</table>
										</li>
									</ul>
								</c:when>
								
								<c:when test="${not empty sessionScope.cart.size() }">
										<ul class="dropdown-menu pull-right shoppingcart-box"
										role="menu">
										<li>
											<table class="table table-striped">
												<tbody>
													<c:set var="total" value="${0}"></c:set>
													<c:forEach items="${sessionScope.cart }" var="item">
													<tr>
														<td class="text-center" style="width: 70px">
															<img src="${pageContext.request.contextPath}/assets/uploads/products/${item.product.images[0].name}" style="width: 70px" class="preview">
														</td>
														<td class="text-left "><a class="cart_product_name"
															href="${pageContext.request.contextPath}/user/product/${item.product.productId}"><span class="">${item.product.name }</span></a></td>
														<td class="text-center">x${item.quantity }</td>
														<td class="text-center">																												
						                                  	<c:choose > 
						                                  		<c:when test="${item.product.discount.discoutPercent > 0 }">
						                                  			<c:set var="total" value="${total + ((item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity) }"></c:set>							                                				                                      
				                                            		<span class="font-weight-bold">$<fmt:formatNumber  type="number"  maxFractionDigits="2" value="${(item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity }" /> </span>
						                                  		</c:when>
						                                  		<c:when test="${item.product.discount.discoutPercent <= 0 }">							                                			
						                                  			$${item.product.price * item.quantity}
						                                  			<c:set var="total" value="${total + (item.product.price * item.quantity)}"></c:set>
						                                  		</c:when>
						                                  	</c:choose>                                                            
														</td>
														
														<td class="text-right"><a href="product.html"
															class="fa fa-edit"></a></td>
<%-- 														<td class="text-right"><a onclick="return confirm('Are you sure ?');" href="${pageContext.request.contextPath}/user/cart/remove/${item.product.productId}" --%>
<!-- 															class="fa fa-times fa-delete"></a></td> -->
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</li>
										<li>
											<div>
											</br>												
												<div class="pull-left" align="center"> <span >${cart.size() } Add To Cart.</span> </div>
												<div class="pull-right">
												<a class="btn view-cart" href="${pageContext.request.contextPath}/user/cart/index"><i
														class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp;
												</div>
											</div>
										</li>
									</ul>
								</c:when>
							</c:choose>
								</div>								
							</div>
							<!--//cart-->
						</div>

					</div>
				</div>

			</div>
		</header>
		<!-- //Header Container  -->


		<!-- Main Container  -->
		<div class="main-container container">
			<jsp:invoke fragment="content"></jsp:invoke>
		</div>
		<!-- //Main Container -->



		<!-- Footer Container -->
		<footer class="footer-container typefooter-1">
			<!-- Footer Top Container -->
			<section class="footer-top">
				<div class="container ftop">
					<div class="row">
						<div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 ">

							<div class="module newsletter-footer1">
								<div class="newsletter"
									style="width: 100%; background-color: #fff;">
									<div class="title-block">
										<div class="page-heading font-title">Contact Us</div>
										<div class="promotext">Your messages will help us to improve.</div>
									</div>

									<div class="block_content">
										<form method="post" id="signup" name="signup"
											class="form-group form-inline signup send-mail"
											action="${pageContext.request.contextPath }/user/home/sendMail"
											onsubmit="return validatEemail();" >
											<div class="form-group">
												<div >
													<input type="text" placeholder="Your name..."
														class="form-control" 
														name="name" size="55">
												</div>
											</div>
												<br>
											<div class="form-group">
												<div >
													<input type="email" placeholder="Your email address..." class="form-control" name="email" size="55" required="required">
												</div>
											</div><br><div class="form-group">
												<div >
													<textarea class="form-control" rows="5" cols="55" name="content" placeholder="Your messages..." required="required"></textarea>
												</div>
											</div>
											<br>
											<div align="left" class="subcribe">
												<button class="btn btn-primary btn-default font-title" type="submit" name="submit">Subscribe</button>
											</div>
										</form>
									</div>
									<!--/.modcontent-->
								</div>
							</div>

						</div>
						<div class="col-lg-4 col-md-5 col-sm-12 col-xs-12 ">
							<ul class="socials">
								<li class="facebook"><a class="_blank"
									href="https://www.facebook.com/MagenTech" target="_blank"><i
										class="fa fa-facebook"></i><span>Facebook</span></a></li>
								<li class="twitter"><a class="_blank"
									href="https://twitter.com/smartaddons" target="_blank"><i
										class="fa fa-twitter"></i><span>Twitter</span></a></li>
							</ul>


						</div>
					</div>
				</div>
			</section>
			<!-- /Footer Top Container -->

			<div class="footer-middle ">
				<div class="container">
					<div class="row">
						<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 col-style">
							<div class="infos-footer">
								<a href="#"><img
									src="${pageContext.request.contextPath}/resources/user/image/catalog/logo2heaven.png" 
									></a>
							</div>
						</div>
						<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 col-style">
							<div class="box-information box-footer">
								<div class="infos-footer">
									<h3 class="modtitle">About Us</h3>
									<div class="modcontent">
										<ul class="menu">
									<li class="adres">35/6 D5 Street, Ward 25, Binh Thanh District, Ho Chi Minh City </li>
									<li class="phone">1800 1779</li>
									<li class="mail">aptech2@aprotrain.com</li>
									<li class="time">Open time: 7:00AM - 9:30PM</li>
								</ul>
									</div>
								</div>
							</div>
						</div>
						
						<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12 col-style">
							<div >
								<div >
									<h3 class="modtitle">Designed By</h3>
									<br>
										<ul>
									<li ><b> C1911L - STUPID TEAM</b></li>
									<li > <b>Instructors:</b> Phan Huu Tri</li>
									<li ><b>Leader:</b> Vu Minh Phat</li>
									<li > <b>Team member:</b> Le Thuy Tuong Vy | Thong Quoc Thien | Nguyen Van Hung Vy
									</li>
								</ul>				
								</div>
							</div>
						</div>
						</div>

					</div>
				</div>
			</div>


			<!--Back To Top-->
			<div class="back-to-top">
				<i class="fa fa-angle-up"></i>
			</div>
			<!--Back To Top-->
			<div class="back-to-top">
				<i class="fa fa-angle-up"></i>
			</div>
		</footer>
		<!-- //end Footer Container -->

	</div>


	<!-- End Color Scheme
============================================ -->



	<!-- Include Libs & Plugins
============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/libs.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/jquery-ui/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/modernizr/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/minicolors/jquery.miniColors.min.js"></script>

	<!-- Theme files
============================================ -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/application.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/homepage.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/toppanel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/user/js/themejs/addtocart.js"></script>
	<!-- Them files
============================================ -->




</body>
</html>