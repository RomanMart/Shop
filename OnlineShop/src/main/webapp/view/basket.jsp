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

<table class="table table-bordered">
		<tr>
			<th>ID</th>
			<th>Бренд</th>
			<th>Модель</th>
			<th>Ціна</th>
			<th>Опції</th>
		</tr>

		<c:forEach items="${showAllPhones}" var="phone">
		
			<tr>
				<td>${phone.id }</td>
				<td><a href="phoneNumber-${phone.id}">${phone.brand }</a></td>
				<td>${phone.type }</td>
				<td>${phone.price }</td>
				<td>
				
					<form action="#" method="post">
					<li><security:authorize access="hasRole('USER')">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <select name="id">
						
						</select> <input type="submit" value="Купити"
							class="btn btn-primary ">
							</security:authorize></li>
					</form>
				</td>
			</tr>

		</c:forEach>

	</table>


</body>
</html>