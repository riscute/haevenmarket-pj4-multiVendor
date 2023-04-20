<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<mt:template_home title="Home">
	<jsp:attribute name="content">
		<div id="content">
        <div class="box-top hidden-lg hidden-md hidden-sm ">
            <div class="module sohomepage-slider ">
                <div class="yt-content-slider" data-rtl="yes"
						data-autoplay="no" data-autoheight="no" data-delay="4"
						data-speed="0.6" data-margin="0" data-items_column0="1"
						data-items_column1="1" data-items_column2="1"
						data-items_column3="1" data-items_column4="1" data-arrows="no"
						data-pagination="yes" data-lazyload="yes" data-loop="no"
						data-hoverpause="yes">
                    <div class="yt-content-slide">
                        <a href="#"><img
								src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-1.jpg"
								alt="slider1" class="img-responsive"></a>
                    </div>
                    <div class="yt-content-slide">
                        <a href="#"><img
								src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-2.jpg"
								alt="slider2" class="img-responsive"></a>
                    </div>
                    <div class="yt-content-slide">
                        <a href="#"><img
								src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/slider-3.jpg"
								alt="slider3" class="img-responsive"></a>
                    </div>
                </div>
                
                <div class="loadeding"></div>
            </div>                                             
        </div>
        <div class="row">
            

            <div
					class="col-lg-12 col-md-9 col-sm-8 col-xs-12 main-right">
                <div class="slider-container row"> 
                                
                    <div
							class="col-lg-9 col-md-8 col-sm-8 col-xs-12 col2">
                        <div class="module sohomepage-slider ">
                            <div class="yt-content-slider"
									data-rtl="yes" data-autoplay="no" data-autoheight="no"
									data-delay="4" data-speed="0.6" data-margin="0"
									data-items_column0="1" data-items_column1="1"
									data-items_column2="1" data-items_column3="1"
									data-items_column4="1" data-arrows="no" data-pagination="yes"
									data-lazyload="yes" data-loop="no" data-hoverpause="yes">
                                <div class="yt-content-slide">
                                    <a href="#"><img
											src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/heavenmarket1.jpg"
											class="img-responsive"></a>
                                </div>
                                <div class="yt-content-slide">
                                    <a href="#"><img
											src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/heavenmarket2.jpg"
											width="2000px" height="1125px" alt="slider2"
											class="img-responsive"></a>
                                </div>
                                <div class="yt-content-slide">
                                    <a href="#"><img
											src="${pageContext.request.contextPath}/resources/user/image/catalog/slideshow/home1/heavenmarket3.jpg"
											alt="slider3" class="img-responsive"></a>
                                </div>
                            </div>
                            
                            <div class="loadeding"></div>
                        </div>
                        
                    </div>
                    
                    <div
							class="col-lg-3 col-md-4 col-sm-4 col-xs-12 col3">
                        <div class="modcontent clearfix">
                            <div class="banners banners1"> 
                                <div class="b-img">
                                        <a href="#"><img
											width="474px" height="270px"
											src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/freeship2.jpg"></a>
                                </div>
                               
                                <div class="b-img">
                                        <a href="#"><img
											width="474px" height="286px"
											src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/shoppingphoto.jpg"></a>
                                </div>
                            </div>
                        </div>
                    </div>                
                </div>

                <div class="banners banners3">
                    <div class="banner">
                      
                    </div>
                </div>

                <!-- Deals -->
                <div class="module deals-layout1">
                
                 <div
					class="slider-brands col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="yt-content-slider contentslider"
						data-autoplay="no" data-delay="4" data-speed="0.6" data-margin="0"
						data-items_column0="8" data-items_column1="6"
						data-items_column2="3" data-items_column3="2"
						data-items_column4="1" data-arrows="yes" data-pagination="no"
						data-lazyload="yes" data-loop="no">
                    <c:forEach items="${stores }" var="store">
                    	<div class="item">
                        <a
									href="${pageContext.request.contextPath}/user/store/${store.userId}">                       	
                            <img width="140" height="120"
									src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image}">
                        </a>
                    </div>
                    </c:forEach>
                </div>
            </div>
                
                
<!--                     <h3 class="modtitle"> -->
<!-- 							<span>Daily Deals</span> -->
<!-- 						</h3> -->
<!--                     <div class="modcontent"> -->
<!--                         <div id="so_deal_1" class="so-deal style2"> -->
<!--                             <div -->
<!-- 									class="extraslider-inner products-list yt-content-slider" -->
<!-- 									data-rtl="yes" data-autoplay="no" data-autoheight="no" -->
<!-- 									data-delay="4" data-speed="0.6" data-margin="30" -->
<!-- 									data-items_column0="2" data-items_column1="1" -->
<!-- 									data-items_column2="1" data-items_column3="1" -->
<!-- 									data-items_column4="1" data-arrows="yes" data-pagination="yes" -->
<!-- 									data-lazyload="yes" data-loop="no" data-hoverpause="yes">   -->
<%--                                 <c:forEach --%>
<%-- 										items="${listProductTrending1 }" var="item" begin="0" end="7"> --%>
<!-- 	                                <div class="item"> -->
	                                
<!-- 	                                    <div class="product-thumb "> -->
<!-- 	                                        <div class="row"> -->
<!-- 	                                            <div class="inner"> -->
<!-- 	                                                <div -->
<!-- 															class="item-left col-lg-6 col-md-5 col-sm-5 col-xs-12"> -->
<!-- 	                                                    <div class="image">  -->
<%-- 	                                                    	<c:if --%>
<%-- 																	test="${item.discount.discoutPercent >0 }"> --%>
<!-- 		                                                       <span -->
<%-- 																		class="label-product label-product-sale"> -${item.discount.discoutPercent}% </span> --%>
<%-- 		                                                     </c:if>                                                  --%>
<!-- 	                                                        <a -->
<%-- 																	href="${pageContext.request.contextPath}/user/product/${item.productId}" --%>
<!-- 																	target="_self"> -->
<!-- 	                                                        	<img -->
<%-- 																	src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}" --%>
<!-- 																	class="img-responsive">	                                                            -->
<!-- 	                                                        </a> -->
	                                                    
<!-- 	                                                    </div> -->
<!-- 	                                                </div> -->
<!-- 	                                                <div -->
<!-- 															class="item-right col-lg-6 col-md-7 col-sm-7 col-xs-12"> -->
<!-- 	                                                    <div -->
<!-- 																class="caption"> -->
<!-- 	                                                        <h4 -->
<!-- 																	class="formattext"> -->
<!-- 																	<a -->
<%-- 																		href="${pageContext.request.contextPath}/user/product/${item.productId}" --%>
<%-- 																		target="_self">${item.name }</a> --%>
<!-- 																</h4> -->
<!-- 	                                                        <p -->
<!-- 																	class="price"> -->
<%-- 	                                                        	<c:choose>  --%>
<%--                                                             		<c:when --%>
<%-- 																			test="${item.discount.discoutPercent >0 }"> --%>
<!--                                                             			<span -->
<%-- 																				class="price-new">$<fmt:formatNumber --%>
<%-- 																					type="number" maxFractionDigits="2" --%>
<%-- 																					value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span> --%>
<!--                                                               				<span -->
<!-- 																				class="price-old">$${item.price }</span> -->
<%--                                                             		</c:when> --%>
<%--                                                             		<c:when --%>
<%-- 																			test="${item.discount.discoutPercent <= 0 }"> --%>
<!--                                                             			<span>$${item.price }</span> -->
<%--                                                             		</c:when> --%>
<%--                                                             	</c:choose>                                                         --%>
<!-- 	                                                        </p> -->
<!-- 	                                                        <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore..</p> -->
<!-- 	                                                        <div -->
<!-- 																	class="item-available"> -->
<!-- 	                                                            <div -->
<!-- 																		class="row"> -->
<!-- 	                                                                <p -->
<%-- 																			class="col-xs-6 a1">Available: <b>${item.quantity }</b>  --%>
<!-- 	                                                                </p> -->
<!-- 	                                                                <p -->
<%-- 																			class="col-xs-6 a2">Sold: <b>${item.unitOnOrder }</b>  --%>
<!-- 	                                                                </p> -->
<!-- 	                                                            </div> -->
<%-- 	                                                            <c:set --%>
<%-- 																		var="precent" --%>
<%-- 																		value="${(item.unitOnOrder/item.quantity)*100 }"></c:set> --%>
<!-- 	                                                            <div -->
<!-- 																		class="available"> <span class="color_width" -->
<!-- 																			data-title="0%" data-toggle="tooltip" title="75%" -->
<!-- 																			style="width: 10%"></span> -->
<!-- 	                                                            </div> -->
<!-- 	                                                        </div> -->
<!-- 	                                                        countdown box -->
<!-- 	                                                        <div -->
<!-- 																	class="item-time-w"> -->
<!-- 	                                                            <div -->
<!-- 																		class="time-title"> -->
<!-- 																		<span>Hurry Up!</span> Offer ends in:60</div> -->
<!-- 	                                                            <div -->
<!-- 																		class="item-time"> -->
<!-- 	                                                                <div -->
<!-- 																			class="item-timer"> -->
<!-- 	                                                                    <div -->
<!-- 																				class="defaultCountdown-30">dd11</div> -->
<!-- 	                                                                </div> -->
<!-- 	                                                            </div>                                                                                                   -->
<!-- 	                                                        </div>                                                     -->
<!-- 	                                                        end countdown box -->
<!-- 	                                                    </div> -->
<!-- 	                                                </div> -->
<!-- 	                                            </div> -->
<!-- 	                                        </div> -->
<!-- 	                                    </div> -->
<!-- 	                                </div> -->
<%--                                 </c:forEach>                               --%>
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                </div>
                <!-- End Deals -->

                <div class="banners banners6">
                    <div class="banner">
                        
                    </div>
                </div>
                
                                     <hr>
                <div class="banners banners7">
                    <div class="row">
                        <div align="center" style="padding-top: 240px">
							 <a href="">
                                    <img width="1400px" height="573px"
									src="${pageContext.request.contextPath}/resources/user/image/catalog/banners/salebirthday.jpg"
									alt="image">
                             </a>
                             </div>
                        </div>
                    </div>
           

                <!-- Listing tabs custom -->
                <div
						class="module listingtab1-custom listingtab-layout1">
                    <h3 class="modtitle">
							<span>Some Product</span>
						</h3>
                    <div id="so_listing_tabs_2"
							class="so-listing-tabs first-load">
                        <div class="loadeding"></div>
                        <div class="ltabs-wrap">
                            <div
									class="ltabs-items-container products-list grid">
                                <!--Begin Items-->
                                <div
										class="ltabs-items ltabs-items-selected items-category-51"
										data-total="14">
                                    <div
											class="ltabs-items-inner ltabs-slider">
                                        <!-- item listing tab -->
                                        <div class="ltabs-item">
											<c:forEach items="${listProductTrending }" var="item">
												<div
														class="item-inner product-layout transition product-grid">
	                                               <div
															class="product-item-container"
															style="box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px, rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;">
	                                                    <div
																class="left-block">
	                                                        <div
																	style="max-height: 210px; min-height: 210px"
																	class="product-image-container second_img">
	                                                            <a
																		href="${pageContext.request.contextPath}/user/product/${item.productId}"
																		target="_self" title="Pastrami bacon">
	                                                                <img
																		src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[0].name}"
																		class="img-1 img-responsive">
	                                                                <img
																		src="${pageContext.request.contextPath}/assets/uploads/products/${item.images[1].name}"
																		class="img-2 img-responsive">
	                                                            </a>
	                                                        </div>
	                                                        <c:if
																	test="${item.discount.discoutPercent >0 }">
	                                                        	<div
																		class="box-label"> <span
																			class="label-product label-sale"> -${item.discount.discoutPercent}% </span>
																	</div>
	                                                        </c:if>	                                                        
	                                                        
	                                                    </div>
	                                                    <div
																class="right-block">
	                                                        <div
																	class="caption">
	                                                            <c:set
																		var="total" value="${0}" />
							                                    <c:set var="total1"
																		value="${0}" />
							                                    <c:set var="size"
																		value="${0}" />
						                                       <!-- calculator total rating -->                                      
																<c:forEach var="productrv"
																		items="${item.productReviews}">
														 	 		<c:set var="total"
																			value="${(total + (productrv.rating/5))}" />								 	 
																</c:forEach>													
																	<c:set var="size" value="${item.productReviews.size()}" />
																	<c:set var="total1" value="${(total/size)*5 }" />
						                                         <c:choose>
																	<c:when test="${total1 > 4.5 && total1 <= 5 }">												
																		<div class="ratings">
																			<div class="rating-box">													
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 3.5 && total1 <= 4.5}">											
																		<div class="ratings">
																			<div class="rating-box">
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>				
																	</c:when>
																	<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>	
																	</c:when>
																	<c:when test="${total1 >= 1 && total1 <= 1.5 }">
																		<div class="ratings">
																			<div class="rating-box">
																				
																				<<span class="fa fa-stack"><i
																						class="fa fa-star fa-stack-1x"></i><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>
																	<c:when test="${size < 1 }">
																		<div class="ratings">
																			<div class="rating-box">											
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																				<span class="fa fa-stack"><i
																						class="fa fa-star-o fa-stack-1x"></i></span>
																			</div>
																		</div>												
																	</c:when>	
																</c:choose>                             
	                                                            <h4
																		class=" formattext">
																		<a
																			href="${pageContext.request.contextPath}/user/product/${item.productId}"
																			title="Pastrami bacon" target="_self">${item.name }</a>
																	</h4>
	                                                            <div
																		class="price">
	                                                            	<c:choose> 
	                                                            		<c:when
																				test="${item.discount.discoutPercent >0 }">
	                                                            			<span
																					class="price-old">$${item.price }</span>
	                                                            			<span
																					class="price-new">$<fmt:formatNumber
																						type="number" maxFractionDigits="2"
																						value="${item.price -((item.price/100) * item.discount.discoutPercent) }" /></span>
<%--                                                                				<c:if --%>
<%-- 																					test="${item.price >= 50}"> --%>
<!--                                                                					<span -->
<!-- 																						style="float: right;"><img width="25" -->
<!-- 																						height="25" -->
<%-- 																						src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span> --%>
<%--                                                                				</c:if> --%>
                                                               				
	                                                            		</c:when>
	                                                            		<c:when
																				test="${item.discount.discoutPercent <= 0 }">
	                                                            			<span>$${item.price }</span>
<%-- 	                                                            			<c:if --%>
<%-- 																					test="${item.price >= 50}"> --%>
<!--                                                                					<span -->
<!-- 																						style="float: right;"><img width="25" -->
<!-- 																						height="25" -->
<%-- 																						src="${pageContext.request.contextPath}/resources/user/image/icon/free-delivery.png"></span> --%>
<%--                                                                				</c:if> --%>
	                                                            		</c:when>
	                                                            	</c:choose>                                                            
	                                                            </div>     
	                                                        </div>
	                                                    </div>
	                                                </div>
	                                            </div>											
											</c:forEach>
                                        </div>
                                        <!-- end item listing tab -->
                                    </div>
                                </div>
                                <div
										class="ltabs-items items-category-52 grid" data-total="14">
                                    <div class="ltabs-loading"></div>                                
                                </div>

                                <div
										class="ltabs-items  items-category-53 grid" data-total="14">
                                    <div class="ltabs-loading"></div>
                                </div>
                                <!--End Items-->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end Listing tabs custom -->
                            
            </div>
           
        </div>
        
    </div>
		
	</jsp:attribute>
</mt:template_home>
