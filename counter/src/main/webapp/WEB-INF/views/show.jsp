<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Current visit count</title>
	<!-- Bootstrap -->
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<!-- Estilos Locales -->
	<link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
	
	<div class="container py-5">
		<div class="d-flex justify-content-center">
			<div class="container">
				<div class="card">
					<div class="card-header text-center fw-bold">
						Counter
					</div>
					<div class="card-body">
						<h1>You have visited <a href="/">http://localhost:8081/</a> <c:out value="${countToShow}"></c:out> times.</h1>
						<h2><a href="/">Test another visit?</a></h2>
						<h2><a href="/count2">Count +2?</a></h2>
					</div>
					<div class="card-footer">
						<div class="d-flex justify-content-end align-items-center">
							<a href="/reset" class="btn btn-danger">Reset Counter</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- jQuery (No necesario en Bootstrap 5) -->
	<script src="/webjars/jquery/jquery.min.js"></script>
	<!--Bootstrap -->
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<!-- Javascript Local -->
	<script src="/js/app.js"></script>
</body>
</html>