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
	<link rel="stylesheet"
	href='<c:url value="/res/css/style.css"></c:url>'>
</head>
<body>



<div class="container">
			<div class="row">
			<c:forEach items="${findByBrand}" var="phone">
				<div class="col-xs-6 col-sm-4 ">
					<div class="thumbnail">
						<img src="http://placehold.it/250x250" class = "img-circle"alt="">
						<div class="caption">
							<h3>
							${phone.brand }
							</h3>
							<h4>${phone.price} $</h4>
							<a href="phoneNumber-${phone.id}" class="btn btn-success">Детальніше</a>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>


		</div>

</body>
</html>