<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href='<c:url value="/res/css/bootstrap.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/res/css/style.css"></c:url>'>
</head>
<body>


	<div class="container">
		<div class="row">
			<div class="col-xs-9 col-md-9 col-lg-12 ">
				<div class="thumbnail">
					<img src="/res/1.jpg">
					<div class="carousel-caption">
						<h2>${phone.brand} ${phone.type}</h2>
						<p>${phone.price}$</p>
						<p>
						<li><security:authorize access="isAuthenticated()">
						<form action="/basket" method="post">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <input
								class="btn btn-block btn-success type="
								submit" value="в корзину" name="order">
	</form></security:authorize></li></p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>