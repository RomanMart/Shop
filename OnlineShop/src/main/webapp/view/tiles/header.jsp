<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href='<c:url value="/res/css/font-awesome.css"></c:url>'>
</head>
<body>
	<div class="navbar navbar-default navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">Магазин</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#responsive-menu">
					<span class="sr-only">Відчинити навігацію</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="responsive-menu">
				<ul class="nav navbar-nav">
					<li><security:authorize access="hasRole('USER')">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<a href="/basket">Кошик</a>
						</security:authorize></li>
					<li><a href="#"><spring:message code="welcome.message" /> ${username}.</a></li>
					<li><security:authorize access="isAnonymous()">
					<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<a href="/sign">Реєстрація</a>
						</security:authorize></li>
					<li><security:authorize access="hasRole('ADMIN')">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<a href="/addPhone">Додати телефон</a>
							
						</security:authorize></li>
						<li><security:authorize access="isAuthenticated()">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<a href="showAllPhonesB">Всі телефони</a>
							
						</security:authorize></li>
						

				</ul>
				<li><security:authorize access="isAnonymous()">
						<!-- <form action="/aaa" method="post"
							class="navbar-form navbar-right hidden-sm">
							<div class="form-group">
								<input name="username" placeholder="Enter username"
									class="form-control">
							</div>
							<div class="form-group">
								<input type="password" name="password"
									placeholder="Enter password" class="form-control">
							</div>
							<div class="form-group">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-sign-in"> Log in</i>
								</button>
							</div>
						</form> -->
						<form action="/aaa" method="post"
							class="navbar-form form-inline navbar-right">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<div class="form-group">
								<input name="username" type="text" class="form-control"
									placeholder="Username">
							</div>
							<div class="form-group">
								<input name="password" type="text" class="form-control"
									placeholder="Password">
							</div>
							<button type="submit" class="btn btn-primary">Увійти</button>
						</form>
					</security:authorize></li>

				<li><security:authorize access="isAuthenticated()">
						<form action="/logout" method="post"
							class="navbar-form navbar-right ">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<div class="form-group">
								<button type="submit" class="btn btn-block btn-success"
									style="margin-top: -17px;">
									<i>Вийти</i>

								</button>
							</div>
						</form>
					</security:authorize></li>

			</div>

		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-8"></div>
			<div class="col-md-4"></div>
		</div>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.js"></script>
</body>
</html>