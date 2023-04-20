<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/iofrm-style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/iofrm-theme3.css">
</head>
<body>
	<div class="form-body">
		<div class="website-logo">
			<a href="${pageContext.request.contextPath}/user/home">
				<div class="logo">
					<img class="logo-size" src="${pageContext.request.contextPath}/resources/account/images/logo-light.svg">
				</div>
			</a>
		</div>
		<div class="row">
			<div class="img-holder">
				<div class="bg"></div>
				<div class="info-holder"></div>
			</div>
			<div class="form-holder">
				<div class="form-content">
					<div class="form-items">
						<h3>Login</h3>
						<p>Be a smart investor, cooperate and develop the system.</p>
						<div class="page-links">
							<a href="${pageContext.request.contextPath}/account/login" class="active">Login</a><a
								href="${pageContext.request.contextPath}/account/register">Register</a>
						</div>

						<c:choose>
							<c:when test="${not empty error}">
								<div
									class="alert alert-danger alert-dismissible fade show with-icon"
									role="alert">
									 ${error }
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							</c:when>
							<c:when test="${not empty success}">
								<div
									class="alert alert-success alert-dismissible fade show with-icon"
									role="alert">
									 ${success }
									<button type="button" class="close" data-dismiss="alert"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							</c:when>
						</c:choose>
						<c:if test="${not empty sessionScope.msggr }">
							<div
								class="alert alert-success alert-dismissible fade show with-icon"
								role="alert">
									${sessionScope.msggr }
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								</div>
						</c:if>
						<form method="post"
							action="${pageContext.request.contextPath}/account/process-login">
							<input class="form-control" type="text" name="username"
								placeholder="Username" required> <input
								class="form-control" type="password" name="password"
								placeholder="Password" required>
							<div class="form-button">
								<button id="submit" type="submit" class="ibtn">Login</button> <a href="${pageContext.request.contextPath }/account/forgetPass"><span style="color: blue; font-size: 15px " >Forget Password?</span> </a>
							</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/account/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/account/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/account/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/account/js/main.js"></script>
</body>
</html>
