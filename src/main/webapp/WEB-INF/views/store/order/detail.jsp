<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<mt:template_store title="Order">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Details</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Order Management</li>
                        <li class="breadcrumb-item active">View All</li>
                        <li class="breadcrumb-item active">Details</li>
                        <li class="breadcrumb-item active"> #${order.orderId }</li>
                    </ul>
                    
                </div>
            </div>
        </div>
        <div class="container-fluid">            

            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                       <s:form id="basic-form" modelAttribute="order" action="${pageContext.request.contextPath}/store/order/detail/${order.orderId }" method="post">
                        <div class="body">
                            <h3>Invoice Details </h3>
                            <ul class="nav nav-tabs-new2">
                                <li class="nav-item inlineblock"><a class="nav-link active" data-toggle="tab" href="#details" aria-expanded="true">Details</a></li>                                                               
                            </ul>
                            <div class="tab-content mt-3">
                                <div role="tabpanel" class="tab-pane in active" id="details" aria-expanded="true">
                                    <div class="row clearfix">
                                        <div class="col-md-6 col-sm-6">
                                            <address>
                                                <strong>Customer Infomation</strong><br>
                                                <b>Name:</b> ${order.user.fullname }<br>
                                                <b>Address:</b> ${order.address }<br>                                                
                                                <b>Phone:</b> ${order.user.phone }
                                                
                                            </address>
                                        </div>
                                        <div class="col-md-6 col-sm-6 text-right">
                                            <p class="m-b-0"><strong>Order Date: </strong> ${order.created }</p>
                                            <p><strong>Order ID: </strong> #${order.orderId }</p>
                                            <p class="m-b-0"><strong>Order Status: </strong><span class="badge badge-success m-b-0">${order.status.name }</span></p>
                                        </div>
                                    </div>
                                    <div class="row clearfix">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <thead class="thead-dark">
                                                        <tr>
                                                            <th>#</th>  
                                                            <th>Image</th>                                                      
                                                            <th>Item</th>
                                                            <th class="hidden-sm-down">Description</th>
                                                            <th>Quantity</th>
                                                            <th class="hidden-sm-down">Unit Cost</th>
                                                            <th class="hidden-sm-down">Discount</th>
                                                            <th>Total</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    	<c:set var="index" value="${0}"></c:set>
                                                    	<c:set var="total" value="${0}"></c:set>
                                                    	<c:set var="subTotal" value="${0}"></c:set>
                                                    	<c:forEach items="${order.orderDetails }" var="item">
                                                    		<tr>
                                                            <td><c:set var="index" value="${index + 1 }"></c:set>${index }</td>
                                                            <td><img width="50" height="70" style="overflow:hidden;" src="${pageContext.request.contextPath}/assets/uploads/products/${item.product.images[0].name}"  class="rounded shadow p-1 mb-2 " alt=""></td>
                                                            <td>${item.product.name }</td>
                                                            <td class="hidden-sm-down">${item.note }</td>
                                                            <td>${item.quantity }</td>
                                                            <td class="hidden-sm-down">$${item.product.price }</td>
                                                            <td>-${item.discount.discoutPercent }%</td>
                                                            <td>
                                                            	<c:set var="total" value="${(item.product.price-((item.product.price/100)*item.discount.discoutPercent))*item.quantity}"></c:set>
                                                            	<c:set var="subTotal" value="${subTotal + total}"></c:set>
                                                            	<span class="font-weight-bold">$<fmt:formatNumber type="number"  maxFractionDigits="2" value="${total }" /> </span>
                                                            </td>
                                                        </tr>
                                                    	
                                                    	</c:forEach>
                                                       
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row clearfix">
                                        <div class="col-md-6 text-light">
                                            
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <p class="m-b-0"><b>Sub-total:</b> <fmt:formatNumber type="number"  maxFractionDigits="2" value="${subTotal }" /></p>
<!--                                             <p class="m-b-0">Delivery charges: -->
<%--                                             	<c:choose> --%>
<%--                                             		<c:when test="${subTotal >=50 }"> --%>
<!--                                             			free  -->
<%--                                             		</c:when> --%>
<%--                                             		<c:when test="${subTotal <50 }"> --%>
<!--                                             			$${order.shippers.cost } -->
<%--                                             			<c:set var="subTotal" value="${subTotal + order.shippers.cost }"></c:set>  --%>
<%--                                             		</c:when> --%>
<%--                                             	</c:choose> --%>
<!--                                              </p>  -->
                                                                                                                   
                                            <h3 class="m-b-0 m-t-10">USD <fmt:formatNumber type="number" maxIntegerDigits="4" value="${subTotal}" /></h3>
                                        </div>                                    
                                        <div class="hidden-print col-md-12 text-right">
                                            
                                            
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </div>                                    
                                </div>                                                                     
                            </div>
                        </div>
                    
                     </s:form></div>
                </div>
                
            </div>
           
        </div>
    </div>
	</jsp:attribute>
</mt:template_store>