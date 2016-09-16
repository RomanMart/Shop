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
	<div class="container">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="well span4 offset4">
					<legend>Реєстрація на сайті</legend>
					<form class="form-horizontal" action="addUser" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">Логін</label>
							<div class="col-sm-10">
								<input name="username" class="form-control" id="inputEmail3"
									placeholder="Введіть логін">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Пароль</label>
							<div class="col-sm-10">
								<input type="password" name="password" class="form-control"
									id="inputPassword3" placeholder="Придумайте пароль">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox"> Запам`ятати
										мене
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-block btn-success">Зареєструватись</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4"></div>

		</div>
	</div>
	
</body>
</html>