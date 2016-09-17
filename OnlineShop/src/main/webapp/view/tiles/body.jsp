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
		<ol class="breadcrumb">
			<li><a href="#"> <i class="fa fa-home">Головна</i>
			</a></li>
			<li><security:authorize access="isAuthenticated()">
					<a href="showAllPhones">Телефони</a>
				</security:authorize></li>
			<li><a href="#">Категорія</a></li>
			<li class="active">Назва</li>
		</ol>
	</div>

<div id="thumbnail-preview-indicators" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#thumbnail-preview-indicators" data-slide-to="0" class="active">
              <div class="thumbnail">
                <img class="img-responsive" src="https://cnet4.cbsistatic.com/hub/i/r/2014/08/08/909dd61f-d57f-4566-aff7-f3f271735380/thumbnail/770x433/96951be4443e0d4d0271703be5a863bd/kyocera-brigadier-1144-004.jpg.jpg">
              </div>
            </li>
            <li data-target="#thumbnail-preview-indicators" data-slide-to="1">
            <div class="thumbnail">
                <img class="img-responsive" src="http://s.appleinsider.ru/2016/02/iphone-6c_iphones_silver.jpg">
              </div>
            </li>
            <li data-target="#thumbnail-preview-indicators" data-slide-to="2">
            <div class="thumbnail">
                <img class="img-responsive" src="http://cdn.mos.techradar.com/art/mobile_phones/iPhone/iPhone%207/iPhone-7-concept-970-80.jpg">
              </div>
            </li>
          </ol>
          <div class="carousel-inner">
            <div class="item slides active">
              <div class="slide-1"></div>
              <div class="container">
                <div class="carousel-caption">
                  <h1></h1>
                  <p></p>
                  
                  <p><security:authorize access="isAnonymous()"><a class="btn btn-lg btn-primary" href="/sign" role="button">Зареєструватись</a></security:authorize></p>
                </div>
              </div>
            </div>
            <div class="item slides">
              <div class="slide-2"></div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>Another example headline.</h1>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
                  <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
              </div>
            </div>
            <div class="item slides">
              <div class="slide-3"></div>
              <div class="container">
                <div class="carousel-caption">
                  <h1>One more for good measure.</h1>
                  <p>Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                  <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
              </div>
            </div>
          </div>
          <a class="left carousel-control" href="#thumbnail-preview-indicators" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
          <a class="right carousel-control" href="#thumbnail-preview-indicators" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
      </div> 
<div class="container">
		<div class="col-md-5 pull-right">
			<div class="form-area">
				<form action="findByBrand">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <br style="clear: both"> <input
						type="text" class="form-control" name="brand" placeholder="Пошук за моделлю"
						required> <input type="submit" value="Шукати" id="submit"
						name="submit" class="btn btn-primary pull-right">
				</form>
			</div>
		</div>
		<div class="col-md-5 pull-right">
			<div class="form-area">
				<form action="filter">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <br style="clear: both"> <input
						type="text" class="form-control" name="price"
						placeholder="Пошук за ціною" required> <input type="submit"
						value="Шукати" id="submit" name="submit"
						class="btn btn-primary pull-right">
				</form>
			</div>
		</div>
	</div>

</body>
</html>