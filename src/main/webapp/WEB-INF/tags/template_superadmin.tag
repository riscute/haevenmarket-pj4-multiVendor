<%@ tag language="java" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ attribute name="title" required="true" rtexprvalue="true"
	type="java.lang.String"%>
<%@ attribute name="content" fragment="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="en">
<head>
<title>SupperAdmin :: Home</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta name="description" content="HexaBit Bootstrap 4x Admin Template">
<meta name="author" content="WrapTheme, www.thememakker.com">

<link rel="icon" href="${pageContext.request.contextPath}/resources/user/image/ico/16x16.png" type="image/x-icon">
<!-- VENDOR CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/charts-c3/plugin.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/chartist/css/chartist.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/vendor/toastr/toastr.min.css">


<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/superadmin/css/color_skins.css">
</head>
<body class="theme-orange">

<!-- Page Loader -->
<div class="page-loader-wrapper">
    <div class="loader">
        <div class="m-t-30"><img src="${pageContext.request.contextPath}/resources/user/image/ico/16x16.png"" width="48" height="48" ></div>
        <p>Please wait...</p>        
    </div>
</div>
<!-- Overlay For Sidebars -->
<div class="overlay"></div>

<div id="wrapper">

    <nav class="navbar navbar-fixed-top">
        <div class="container-fluid">

            <div class="navbar-left">
                <div class="navbar-btn">
                    <a href="${pageContext.request.contextPath}/superadmin/dashboard/index"><img src="${pageContext.request.contextPath}/resources/superadmin/images/icon-light.svg" ></a>
                    <button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu fa fa-bars"></i></button>
                </div>
                <a href="javascript:void(0);" class="icon-menu btn-toggle-fullwidth"><i class="fa fa-arrow-left"></i></a>
    
            </div>
            
            <div class="navbar-right">
                <form id="navbar-search" class="navbar-form search-form">
                    <input value="" class="form-control" placeholder="Search here..." type="text">
                    <button type="button" class="btn btn-default"><i class="icon-magnifier"></i></button>
                </form>                

                <div id="navbar-menu">
                    <ul class="nav navbar-nav">
                      
                        <li><a href="javascript:void(0);" class="right_toggle icon-menu" title="Right Menu"><i class="icon-settings"></i></a></li>
                        <li><a href="${pageContext.request.contextPath}/account/logout" class="icon-menu"><i class="icon-power"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <div id="rightbar" class="rightbar">
        <ul class="nav nav-tabs-new">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#setting">Settings</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chat">Chat</a></li>            
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="setting">
                <div class="slim_scroll">
                    <div class="card">
                        <h6>Choose Theme</h6>
                        <ul class="choose-skin list-unstyled mb-0">
                            <li data-theme="purple"><div class="purple"></div></li>
                            <li data-theme="green"><div class="green"></div></li>
                            <li data-theme="orange" class="active"><div class="orange"></div></li>
                            <li data-theme="blue"><div class="blue"></div></li>
                            <li data-theme="blush"><div class="blush"></div></li>
                            <li data-theme="cyan"><div class="cyan"></div></li>
                        </ul>
                    </div>
                    <div class="card">
                        <h6>General Settings</h6>
                        <ul class="setting-list list-unstyled mb-0">
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Report Panel Usag</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked>
                                    <span>Email Redirect</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked>
                                    <span>Notifications</span>
                                </label>                      
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Auto Updates</span>
                                </label>
                            </li>
                        </ul>
                    </div>
                    <div class="card">
                        <h6>Account Settings</h6>
                        <ul class="setting-list list-unstyled mb-0">
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox">
                                    <span>Offline</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked>
                                    <span>Location Permission</span>
                                </label>
                            </li>
                            <li>
                                <label class="fancy-checkbox">
                                    <input type="checkbox" name="checkbox" checked>
                                    <span>Notifications</span>
                                </label>                      
                            </li>
                        </ul>
                    </div>                    
                </div>                
            </div>       
            <div class="tab-pane right_chat" id="chat">
                <div class="slim_scroll">
                    <form>
                        <div class="input-group m-b-20">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="icon-magnifier"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="Search...">
                        </div>
                    </form>
                    <div class="card">
                        <h6>Recent</h6>                        
                        <ul class="right_chat list-unstyled mb-0">
                            <li class="online">
                                <a href="javascript:void(0);">
                                    <div class="media">
                                        <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar4.jpg" alt="">
                                        <div class="media-body">
                                            <span class="name">Ava Alexander <small class="float-right">Just now</small></span>
                                            <span class="message">Lorem ipsum Veniam aliquip culpa laboris minim tempor</span>
                                            <span class="badge badge-outline status"></span>
                                        </div>
                                    </div>
                                </a>                            
                            </li>
                            <li class="online">
                                <a href="javascript:void(0);">
                                    <div class="media">
                                        <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar5.jpg" alt="">
                                        <div class="media-body">
                                            <span class="name">Debra Stewart <small class="float-right">38min ago</small></span>
                                            <span class="message">Many desktop publishing packages and web page editors</span>
                                            <span class="badge badge-outline status"></span>
                                        </div>
                                    </div>
                                </a>                            
                            </li>
                            <li class="offline">
                                <a href="javascript:void(0);">
                                    <div class="media">
                                        <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar2.jpg" alt="">
                                        <div class="media-body">
                                            <span class="name">Susie Willis <small class="float-right">2hr ago</small></span>
                                            <span class="message">Contrary to belief, Lorem Ipsum is not simply random text</span>
                                            <span class="badge badge-outline status"></span>
                                        </div>
                                    </div>
                                </a>                            
                            </li>
                            <li class="offline">
                                <a href="javascript:void(0);">
                                    <div class="media">
                                        <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar1.jpg" alt="">
                                        <div class="media-body">
                                            <span class="name">Folisise Chosielie <small class="float-right">2hr ago</small></span>
                                            <span class="message">There are many of passages of available, but the majority</span>
                                            <span class="badge badge-outline status"></span>
                                        </div>
                                    </div>
                                </a>                            
                            </li>
                            <li class="online">
                                <a href="javascript:void(0);">
                                    <div class="media">
                                        <img class="media-object " src="${pageContext.request.contextPath}/resources/superadmin/images/xs/avatar3.jpg" alt="">
                                        <div class="media-body">
                                            <span class="name">Marshall Nichols <small class="float-right">1day ago</small></span>
                                            <span class="message">It is a long fact that a reader will be distracted</span>
                                            <span class="badge badge-outline status"></span>
                                        </div>
                                    </div>
                                </a>                            
                            </li>                        
                        </ul>
                    </div>                    
                </div>
            </div>
        </div>
    </div>

    <div id="left-sidebar" class="sidebar">
        <div class="navbar-brand">
            <a href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/resources/user/image/ico/16x16.png"><span>Heaven Martket</span></a>
            <button type="button" class="btn-toggle-offcanvas btn btn-sm btn-default float-right"><i class="lnr lnr-menu fa fa-chevron-circle-left"></i></button>
        </div>
        <div class="sidebar-scroll">
            <div class="user-account">
               
                <div class="dropdown">
                    <span>Welcome,</span>
                    <a href="javascript:void(0);" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>${pageContext.request.userPrincipal.name }</strong></a>
                    <ul class="dropdown-menu dropdown-menu-right account">
                        <li><a href="${pageContext.request.contextPath }/store/index"><i class="fa fa-shopping-bag"></i>My Store</a></li>
                        <li><a href="${pageContext.request.contextPath }/user/myaccount"><i class="icon-settings"></i>Settings</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/account/logout"><i class="icon-power"></i>Logout</a></li>
                    </ul>
                </div>
            </div>  
            <nav id="left-sidebar-nav" class="sidebar-nav">
                <ul id="main-menu" class="metismenu">
                    <li class="active"><a href="${pageContext.request.contextPath}/superadmin/dashboard/index"><i class="icon-home"></i><span>Dashboard</span></a></li>

                    
                    <li>
                        <a href="#uiElements" class="has-arrow"><i class="icon-user"></i><span>User Management</span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/superadmin/user/index">View Account</a></li>
                            <li><a href="${pageContext.request.contextPath}/superadmin/user/new">Add New Account</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#Tables" class="has-arrow"><i class="fa fa-file-text-o"></i><span>Orders Management</span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/superadmin/order/index">View All Orders</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#forms" class="has-arrow"><i class="icon-basket"></i><span>Store Management</span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/superadmin/store/index">View All Store</a></li>
                            
                        </ul>
                    </li>
                    <li>
                        <a href="#Tables" class="has-arrow"><i class="icon-bag"></i><span>Products Management</span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/superadmin/product/index">View All Products</a></li>
<%--                             <li><a href="${pageContext.request.contextPath}/superadmin/product/new">New Product</a></li>                     --%>
                        </ul>
                    </li>
                    <li>
                        <a href="#Tables" class="has-arrow"><i class="fa fa-list-ul"></i><span>Category Management</span></a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/superadmin/category/index">View All Category</a></li>
                        </ul>
                    </li>
<!--                     <li> -->
<!--                         <a href="#Tables" class="has-arrow"><i class="icon-present"></i><span>Discount Management</span></a> -->
<!--                         <ul> -->
<%--                             <li><a href="${pageContext.request.contextPath}/superadmin/discount/index">View Discount</a></li>                         --%>
<!--                         </ul> -->
<!--                     </li> -->
                    
<!--                     <li> -->
<!--                         <a href="#Tables" class="has-arrow"><i class="fa fa-truck"></i><span>Shipper Management</span></a> -->
<!--                         <ul> -->
<%--                             <li><a href="${pageContext.request.contextPath}/superadmin/shipper/index">View Shipper</a></li> --%>
                          
<!--                         </ul> -->
<!--                     </li> -->
                </ul>
            </nav>     
        </div>
    </div>
	<!-- Main Content -->
		<jsp:invoke fragment="content"></jsp:invoke>
    <!-- //Main Content -->
</div>

<!-- Javascript -->
<script src="${pageContext.request.contextPath}/resources/superadmin/bundles/libscripts.bundle.js"></script>    
<script src="${pageContext.request.contextPath}/resources/superadmin/bundles/vendorscripts.bundle.js"></script>

<!-- chart -->
<script src="${pageContext.request.contextPath}/resources/superadmin/bundles/c3.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/superadmin/bundles/chartist.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/superadmin/vendor/toastr/toastr.js"></script>

<!-- Validate -->
<script src="${pageContext.request.contextPath}/resources/superadmin/vendor/bootstrap-multiselect/bootstrap-multiselect.js"></script>
<script src="${pageContext.request.contextPath}/resources/superadmin/vendor/parsleyjs/js/parsley.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/superadmin/bundles/mainscripts.bundle.js"></script>
<script src="${pageContext.request.contextPath}/resources/superadmin/js/index.js"></script>
<script>
    $(function() {
        // validation needs name of the element
        $('#food').multiselect();

        // initialize after multiselect
        $('#basic-form').parsley();
    });
    </script>
</body>
</html>

