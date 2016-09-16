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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">
<div class="col-md-5">
    <div class="form-area">  
        <form action="createPhone" method="post">
         <input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
        <br style="clear:both">
                    <h3 style="margin-bottom: 25px; text-align: center;">Додати телефон</h3>
    				<div class="form-group">
						<input type="text" class="form-control"  name="brand" placeholder="Бренд" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="type" placeholder="Модель" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="price" placeholder="Ціна" required>
					</div>
                   
        <input type="submit" value="Додатти" id="submit" name="submit" class="btn btn-primary pull-right">
        </form>
    </div>
</div>
</div>

</body>
</html>