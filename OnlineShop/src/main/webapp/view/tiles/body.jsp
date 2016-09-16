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
              <div class="container">
                  <ol class="breadcrumb">
                      <li>
                          <a href="#">
                              <i class="fa fa-home">Головна</i>
                          </a>
                      </li>
                      <li><a href="#">Блог</a></li>
                      <li><a href="#">Категорія</a></li>
                      <li class="active">Назва</li>
                  </ol>
              </div>
              <div class="container">
              <ul class="nav nav-tabs">
                  <li class="active"><a href="#">елемент 1<span class="badge">14</span></a></li>
                  
              </ul> 
              </div>
              <br>
	
	<br>
          </div>
          <div class="row">
              <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
               <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
               <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
              <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
              <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
               <div class="col-xs-6 col-sm-4 ">
                  <div class="thumbnail">
                        <img src="http://placehold.it/400x240" alt="">
                        <div class="caption"><h3><a href="#">Заголовок</a></h3>
                            <h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</h4>
                            <a href="#" class="btn btn-success">Детальніше</a>
                      </div>
                  </div>
              </div>
          </div>
      
      </div>
	



	<!-- <br>
	<a href="saa">show all authors</a>
	<br>
	<a href = "addAuthor">add author</a>
	<br>
	<a href="createBook">create Book</a>
	<br>
	<a href="toConnect"> toConnect </a>
	<br> -->

	<!-- <a href="/login">login</a> 
	<a href="/login2">login2</a>-->

	<br>

	<!--
	<form action="addUser" method="post">
		<input type="hidden"
				name="${_csrf.parameterName}"
				value="${_csrf.token}"/> 
			<input name="username">
			<input type="password" name="password">
			<input type="submit">	
	</form>
 -->
</body>
</html>