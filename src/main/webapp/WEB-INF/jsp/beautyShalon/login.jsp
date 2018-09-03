<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spr" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-/W3C/DTD HTML 4.01 Transitional/EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="context" value="${pageContext.request.contextPath}" />
<link href="${context}/shalon/css/styles.css" rel="stylesheet" type="text/css" />

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>SB Admin - Start Bootstrap Template</title>
<!-- Bootstrap core CSS-->
<link href="${context}/shalon/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link href="${context}/shalon/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Custom styles for this template-->
<link href="${context}/shalon/css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Login</div>
			<div class="card-body">
				<form:form id="login-form" modelAttribute="login"
					action="${context}/logmein" method='POST'>
<!-- 					<div class="col-sm-6 col-md-6"> -->
<%-- 						<c:if test="${not empty errormessage}"> --%>
<!-- 							<div class="newSpace"> -->
<!-- 								<div class="alert alert-danger"> -->
<!-- 									<span class="glyphicon glyphicon-hand-right"></span> <strong>Exception -->
<!-- 										Message</strong> -->
<!-- 									<hr class="message-inner-separator"> -->
<%-- 									<p>${errormessage}</p> --%>
<!-- 								</div> -->
<!-- 							</div> -->
<%-- 						</c:if> --%>
<!-- 					</div> -->

					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> 
							
						<form:input path="username" class="form-control" id="username" name="username"	
							placeholder="Enter username" required="required" />
					   <form:errors path="username" cssClass="errorMsg" />
					</div>
					
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label>
						<form:password path="password" id="password" class="form-control"  name="password"	
							placeholder="Enter password" required="required" />
					    <form:errors path="password" cssClass="errorMsg" />												
					</div>
					
					<div class="form-group">
						<div class="form-check">
							<label class="form-check-label"> <input
								class="form-check-input" type="checkbox"> Remember
								Password
							</label>
						</div>
					</div>
					<button class="btn btn-primary btn-block">
						<span>Login</span>
					</button>
					
				</form:form>
				<div class="text-center">
					<a class="d-block small mt-3" href="register.html">Register an
						Account</a> <a class="d-block small" href="forgot-password.html">Forgot
						Password?</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap core JavaScript-->
	<script src="${context}/shalon/vendor/jquery/jquery.min.js"></script>
	<script src="${context}/shalon/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="${context}/shalon/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>
</html>