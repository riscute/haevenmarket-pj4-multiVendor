<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<mt:template_home title="Category">
	<jsp:attribute name="content">
				<ul class="breadcrumb">
			<li><a href="#"><i class="fa fa-home"></i></a></li>
			<li><a href="${pageContext.request.contextPath }/">Heaven Market</a></li>
			<li><a href="#">Checkout</a></li>
			
		</ul>
		
		<div class="row">
			<!--Middle Part Start-->
			<div id="content" class="col-sm-12">
			  <h2 class="title">Checkout</h2>
			  <div class="so-onepagecheckout row">
				
				<div class="col-right col-sm-12">
				  <div class="row">
				  	<div class="col-sm-3">
					<div class="panel panel-default">
						<div class="panel-heading">
						  <h4 class="panel-title">
											<i class="fa fa-user"></i> User Information </h4>
						</div>
						<div class=" checkout-shipping-methods">
								<div class="panel-body ">
									<p>Name : <strong> ${user.fullname }</strong> </p>
									<p>Phone : ${user.phone }</p>
									<p>Delivery Address : ${user.address }</p>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-9">
					  <div class="panel panel-default">
						<div class="panel-heading">
						  <h4 class="panel-title"> Products Ordered</h4>
						</div>
						<form method="post" action="${posturl }">
						
						
					<input type="hidden" name="upload" value="1">
					<input type="hidden" name="return" value="${returnurl }">
					<input type="hidden" name="cmd" value="_cart">
					<input type="hidden" name="business" value="${business }">
						
					  <div class="panel-body">
							<div class="table-responsive">
							  <table class="table table-bordered">
								<thead>
								  <tr>								  	
									<td class="text-center">Image</td>
									<td class="text-left">Product Name</td>
									<td class="text-left">Quantity</td>
									<td class="text-right">Unit Price</td>
									<td class="text-right">Total</td>
								  </tr>
								</thead>
								<tbody>
								<c:forEach items="${sessionScope.cart }" var="item"
															varStatus="i">
								  <tr>
								  	
									<td class="text-center"><a href="product.html"><img
																		width="60px"
																		src="${pageContext.request.contextPath}/assets/uploads/products/${item.product.images[0].name}"
																		alt="Xitefun Causal Wear Fancy Shoes"
																		title="Xitefun Causal Wear Fancy Shoes"
																		class="img-thumbnail"></a></td>
									<td class="text-left"><a href="product.html">${item.product.name }</a></td>
									<td class="text-right">
										x${item.quantity }	
									</td>
									<td class="text-right">
										<div class="price">
				                             <c:choose> 
					                           	<c:when
																				test="${item.product.discount.discoutPercent >0 }">
					                           		<span class="price-old">$${item.product.price }</span>
					                           		<span class="price-new"
																					style="color: dark">$<fmt:formatNumber
																						type="number" maxFractionDigits="2"
																						value="${item.product.price -((item.product.price/100) * item.product.discount.discoutPercent) }" /></span>		                             	
					                           	</c:when>
				                               	<c:when
																				test="${item.product.discount.discoutPercent <= 0 }">
				                               		<span>$${item.product.price }</span>
				                               	</c:when>
				                              </c:choose>
				                         </div>
									</td>
									<td class="text-right">
									<!-- $${total + (item.product.price * item.quantity) } -->
									 <input type="hidden" name="item_number_${i.index + 1 }"
																	value="${item.product.productId }">
					                    <input type="hidden"
																	name="item_name_${i.index + 1 }"
																	value="${item.product.name }">
					                    <input type="hidden"
																	name="amount_${i.index + 1 }"
																	value="${item.product.price }">
					                    <input type="hidden"
																	name="quantity_${i.index + 1 }"
																	value="${item.quantity }">
										<c:choose> 
					                       <c:when
																			test="${item.product.discount.discoutPercent >0 }">		                         
					                           	<span class="price-new">$<fmt:formatNumber
																					type="number" maxFractionDigits="2"
																					value="${(item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity }" /></span>
					                            <c:set var="total"
																				value="${total + (total +((item.product.price -((item.product.price/100) * item.product.discount.discoutPercent))*item.quantity)) }"></c:set>
					                       </c:when>
				                          	<c:when
																			test="${item.product.discount.discoutPercent <= 0 }">
				                               	<span>$${item.product.price * item.quantity}</span>
				                               	<c:set var="total"
																				value="${total + (item.product.price * item.quantity) }"></c:set>
				                            </c:when>
				                    </c:choose>  
									</td>
									
								  </tr>
								</c:forEach>
								</tbody>
							  </table>
							  <div class="row"> -->
						<div class="col-sm-4 col-sm-offset-8">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td class="text-right">
											<strong>Sub-Total:</strong>
										</td>
										<td class="text-right"><strong style="color: green">$<fmt:formatNumber
																				type="number" maxFractionDigits="2"
																				value="${total }" /></strong></td> 
									</tr>
									<tr>
										<%-- <td class="text-right">
											<strong>Flat Shipping Rate:</strong>
										</td>
										<td class="text-right">
										<c:set var="totalSub" value="${0 }"></c:set> --%>
										<%-- <c:choose>
											<c:when test="${total >= 50 }">
												Free shipping
											<c:set var="totalSub" value="${total }"></c:set>
											</c:when>
										</c:choose>
										<c:choose>
											<c:when test="${total < 50 }">
												+ $3
												<c:set var="totalSub" value="${total +3}"></c:set>
											</c:when>
										</c:choose>
										 --%>
										<!-- </td> -->
									</tr>
									<%-- <tr>
										<td class="text-right">
											<strong>Total:</strong>
										</td>
										<td class="text-right"><strong style="color: green">$<fmt:formatNumber
 														type="number" maxFractionDigits="2" value="${totalSub }" /></strong></td> 
									</tr> --%>
								</tbody>
							</table>
						</div>
					</div>
							  <div class="col-sm-12">
								
								<div class="buttons">
					            <div class="pull-right" style="margin-bottom: 10px">
					            <input type="submit" value="Pay" class="btn btn-danger">
					            </div>								
				      		 </div>
						
								</div>
							</div>
						  </div>
					 
					 </form>
					  </div>				  
					</div>
					
					
					
				  </div>
				</div>
			  </div>
			</div>
			<!--Middle Part End -->
			
		</div>
	
	</jsp:attribute>
</mt:template_home>
