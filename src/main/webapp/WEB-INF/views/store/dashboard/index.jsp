<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<mt:template_store title="store">
	<jsp:attribute name="content">
		<div id="main-content">
        <div class="block-header">
            <div class="row clearfix">
                <div class="col-md-6 col-sm-12">
                    <h2>Store Detail</h2>
                </div>            
                <div class="col-md-6 col-sm-12 text-right">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html"><i class="icon-home"></i></a></li>
                        <li class="breadcrumb-item">Store Management</li>
                        <li class="breadcrumb-item active">User Detail</li>
                    </ul>
                    
                </div>
            </div>
        </div>    
        <div class="container-fluid">           

            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <div class="card profile-header">
                        <div class="body text-center">
                            <div class="profile-image mb-3"><img style="box-shadow: rgba(9, 30, 66, 0.25) 0px 4px 8px -2px, rgba(9, 30, 66, 0.08) 0px 0px 0px 1px;" width="150" height="150" src="${pageContext.request.contextPath}/assets/uploads/stores/${store.image }" class="rounded-circle" alt=""></div>
                            <div>
                                <h4 class="mb-0">Hello <strong>${store.name}</strong> Store</h4>
                                <!-- calculator total rating --> 
	                                           <c:set var="total" value="${0}"/>
	                                           <c:set var="total1" value="${0}"/>
	                                           <c:set var="size" value="${0}"/>
	                                           <!-- calculator total rating -->                                      
	                                           <c:forEach items="${store.products}" var="product">
													<c:forEach var="productrv" items="${product.productReviews}">
													 	 <c:set var="total" value="${(total + (productrv.rating/5))}" />
													</c:forEach> 
												<c:set var="size" value="${size + product.productReviews.size()}" />
												<c:set var="total1" value="${(total/size)*5}" />
												
	                                           </c:forEach>
	                                           
	                                           <c:choose>
												<c:when test="${total1 > 4.5 && total1 <= 5 }">
													<span class="font700"> <fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
													 <div class="small-ratings "> <i class="fa fa-star rating-color "></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> </div>	
												</c:when>
												<c:when test="${total1 > 3.5 && total1 <= 4.5}">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 2.5 && total1 <= 3.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> </div>													
												</c:when>
												<c:when test="${total1 > 1.5 && total1 <= 2.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 >= 1 && total1 <= 1.5 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star rating-color"></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
												<c:when test="${total1 < 1 }">
														<span class="font700"><fmt:formatNumber type="number"  maxFractionDigits="1" value="${total1}" /> / 5 </span><i class="fa fa-1x fa-star text-warning"></i></br> <small>Based On <span class="font700">${size }</span> Ratings</small>
														<div class="small-ratings "> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star "></i> <i class="fa fa-star"></i> </div>												
												</c:when>
											</c:choose>
	                                                                                      	
                                            	
                                            	<!-- /Caculate total rating --> 
                            
                            </div>

                            <div class="dropdown">
                    <a href="javascript:void(0);" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>${pageContext.request.userPrincipal.name }</strong></a>
                    <div class="sidebar-scroll">
	                     <ul class="dropdown-menu dropdown-menu-right account" aria-haspopup="true" aria-expanded="false">                    
	                        <li><a href="${pageContext.request.contextPath}/"><i class="icon-envelope-open"></i>Website</a></li>                       
	                        <li class="divider"></li>
	                        <li><a href="${pageContext.request.contextPath}/account/logout"><i class="icon-power"></i>Logout</a></li>
	                    </ul>
                    </div>
                </div>                      
                        </div>
                    </div>

                    <div class="card">
                        <div class="header">
                            <h2>Store Infomation</h2>
                        </div>
                        <div class="body">
                            <small class="text-muted">Address: </small>
                            <p>${store.address}</p>
                            <hr>
                            <small class="text-muted">Email address: </small>
                            <p>${store.user.email}</p>                            
                            <hr>
                            <small class="text-muted">Mobile: </small>
                            <p>${store.user.phone}</p>
                            <hr>
                            <small class="text-muted">Birth Date: </small>
                            <p class="m-b-0">October 22th, 1990</p>
                          
                           
                        </div>
                    </div>


                </div>

                <div class="col-lg-8 col-md-12">    
                    <div class="card">
                        <div class="body">
                            <ul class="nav nav-tabs-new">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#Overview">Overview</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Settings">Settings</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#Images">Edit Cover Avatar</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content padding-0">
                        <div class="tab-pane blog-page active" id="Overview">
                            <div class="row clearfix text-center">
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="body">
                                            <p class="display-4 font-weight-bold">${store.products.size()}</p>
                                            <h6 class="mb-0 mt-3 text-info">Product</h6>
                                            <spapn>In Store</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-6">
                                    <div class="card">
                                        <div class="body">
                                            <p class="display-4 font-weight-bold">${store.orderses.size()}</p>
                                            <h6 class="mb-0 mt-3 text-primary">Order</h6>
                                           
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-lg-6 col-md-5">
                                    <div class="card">
                                        <div class="body p-2">
                                        <c:set var="total" value="${0 }"></c:set>
                                        	<c:forEach items="${store.orderses }" var="order">
                                        		<c:forEach items="${order.orderDetails }" var="orderdetail">
                                        			<c:set var="total" value="${total + ((orderdetail.product.price-((orderdetail.product.price/100)*orderdetail.discount.discoutPercent))*orderdetail.quantity) }"></c:set>
                                        		</c:forEach>
                                        	</c:forEach>
                                            <p class="display-3 text-success font-weight-bold "><fmt:formatNumber type="number" maxIntegerDigits="4" value="${total}" />$</p>                       
                                            <h6 class="mb-0 mt-3 ">Sale</h6>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="tab-pane" id="Settings">

                            <div class="card">
                                <div class="header bline">
                                    <h2>Basic Information</h2>
                                    
                                </div>
                                <div class="body">
                                    <div class="row clearfix">
                                        <div class="col-lg-12 col-md-12">
                                        	<s:form id="basic-form" method="post" modelAttribute="store" action="${pageContext.request.contextPath}/store/store/edit" >
				                        		<div class="form-group">
				                                    <label>Name</label>
				                                    <s:input path="name" cssClass="form-control"   />
				                                    <s:errors path="name" cssClass="text-danger"></s:errors>                                   
				                                </div>
				                                <div class="form-group">
				                                    <label>Address</label>
				                                    <s:textarea path="address" class="form-control" rows="4"/>
				                                    <s:errors path="name" cssClass="text-danger"></s:errors>                                   
				                                </div>
				  								<s:hidden path="userId"/>
				                               	<button type="submit" class="btn btn-primary">Save</button> &nbsp;&nbsp;
                                    			<a href="${pageContext.request.contextPath }/store/dashboard/index" class="btn btn-default">Cancel</a>
                                    		</s:form>   
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>   
                    
                    <div class="tab-pane" id="Images">

                            <div class="card">
                                <div class="header bline">
                                    <h2>Basic Information</h2>
                                   
                                </div>
                                <div class="body">
                                    <div class="row clearfix">
                                        <div class="col-lg-12 col-md-12">
                                        	<form id="basic-form" method="post" enctype="multipart/form-data"  action="${pageContext.request.contextPath}/store/store/image/edit" >
				                        		<div class="form-group">
				                                    <label>Select Images</label>
				                                    <input type="file" name="file">                              
				                                </div>
				                               	<button type="submit" class="btn btn-primary">Update</button> &nbsp;&nbsp;
                                    			<a href="${pageContext.request.contextPath }/store/dashboard/index" class="btn btn-default">Cancel</a>
                                    		</form>   
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
	</jsp:attribute>
</mt:template_store>