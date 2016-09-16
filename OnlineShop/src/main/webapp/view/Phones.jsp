<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<body>
	<!-- <div class="col-md-5 pull-right">
		<div class="form-area">
			<form action="RemovePhone" method="post">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br style="clear: both">
				<h3 style="margin-bottom: 25px; text-align: center;">видалити
					телефон за брендом</h3>
				<div class="form-group">
					<input type="text" class="form-control" name="brand"
						placeholder="Бренд" required>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="type"
						placeholder="Модель" required>
				</div>
				<input type="submit" value="Видалити" id="submit" name="submit"
					class="btn btn-primary pull-right">
			</form>
		</div>
	</div> -->

	<table class="table">
		<tr>
			<th>ID</th>
			<th>Brand</th>
			<th>Model</th>
			<th>price</th>
		</tr>

		<c:forEach items="${showAllPhones}" var="Phone">
		
			<tr>
				<td>${Phone.id }</td>
				<td>${Phone.brand }</td>
				<td>${Phone.type }</td>
				<td>${Phone.price }</td>
				<td>
					<form action="RemovePhone" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <select name="id">
							<c:forEach items="${showAllPhones}" var="p">
								<option value="${p.id}">${p.brand}</option>
							</c:forEach>

						</select> <input type="submit" value="видалити"
							class="btn btn-primary pull-right">
					</form>
				</td>
			</tr>

		</c:forEach>

	</table>

	<!-- <c:forEach items="${showAllPhones}" var="Phone">
		<p>${Phone.id}${Phone.brand} ${Phone.type}</p>

	</c:forEach>-->



	<div class="col-md-5 pull-right">
		<div class="form-area">
			<form action="RemovePhoneById" method="post">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br style="clear: both"> <input
					type="text" class="form-control" name="id" placeholder="id"
					required> <input type="submit" value="видалити" id="submit"
					name="submit" class="btn btn-primary pull-right">
			</form>
		</div>
	</div>

	<!-- <div class="col-md-5 pull-right">
		<div class="form-area">
			<form action="filter" >
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <br style="clear: both">
				
				
					<input type="text" class="form-control" name="price"
						placeholder="цына" required>
			
				<input type="submit" value="Шукати" id="submit" name="submit"
					class="btn btn-primary pull-right">
			</form>
		</div>
	</div>

${filter} -->

</body>
</html>