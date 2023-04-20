<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/iofrm-style.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/account/css/iofrm-theme27.css">
</head>
<body>
	<div class="form-body">
		<div class="website-logo">
			<a href="${pageContext.request.contextPath }/">
				<div class="logo">
					<img class="logo-size"
						src="${pageContext.request.contextPath}/resources/account/images/logo-light.svg"
						>
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
						<h3>Register</h3>
						<p>Welcome to register in our online store trust and use our service.</p>
						<div class="page-links">
							<a href="${pageContext.request.contextPath}/account/login">Login</a><a href="${pageContext.request.contextPath}/account/register"
								class="active">Register</a>
						</div>
						<s:form method="post" modelAttribute="user"
							action="${pageContext.request.contextPath}/account/register">
							<!-- username -->						
							<s:errors path="username" cssClass="text-danger"></s:errors>
							<s:input path="username" cssClass="form-control" placeholder="username"/>
							<!-- password -->
							<s:errors path="password" cssClass="text-danger"></s:errors>
							<s:password path="password" placeholder="password"
								cssClass="form-control" />
							<s:input path="email" placeholder="E-mail Address"
								cssClass="form-control" />
							<s:input path="fullname" placeholder="Fullname"
								cssClass="form-control" />
							<s:input path="address" placeholder="Adress"
								cssClass="form-control" />
							<s:errors path="phone" cssClass="text-danger"></s:errors>
							<s:input path="phone" placeholder="Phone" cssClass="form-control" />
							
							<div class="form-button">
								<button id="submit" type="submit" class="ibtn">Register</button>  <a href="${pageContext.request.contextPath }/account/login"><span style="color: blue; font-size: 15px " >Have an account? </p> </a>
							</div>
						</s:form>						
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










