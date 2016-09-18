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
	href='<c:url value="/res/css/assets/css/main.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/res/font-awesome-4.6.3/css/font-awesome.min.css"></c:url>'>
<link rel="stylesheet" href='<c:url value="/res/css/style.css"></c:url>'>
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header" class="alt">
			<span class="logo"><img src="/res/logo.svg" alt="" /></span>
			<h1>Stellar</h1>
			<p>
				Just another free, fully responsive site template<br /> built by <a
					href="https://twitter.com/ajlkn">@ajlkn</a> for <a
					href="https://html5up.net">HTML5 UP</a>.
			</p>
		</header>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a href="#intro" class="active">Introduction</a></li>
				<li><a href="#first">First Section</a></li>
				<li><a href="#second">Second Section</a></li>
				<li><a href="#cta">Get Started</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Introduction -->
			<section id="intro" class="main">
				<div class="spotlight">
					<div class="content">
						<header class="major">
							<h2>Ipsum sed adipiscing</h2>
						</header>
						<p>Sed lorem ipsum dolor sit amet nullam consequat feugiat
							consequat magna adipiscing magna etiam amet veroeros. Lorem ipsum
							dolor tempus sit cursus. Tempus nisl et nullam lorem ipsum dolor
							sit amet aliquam.</p>
						<ul class="actions">
							<li><a href="generic.html" class="button">Learn More</a></li>
						</ul>
					</div>
					<span class="image"><img src="/res/pic01.jpg" alt="" /></span>
				</div>
			</section>

			<!-- First Section -->
			<section id="first" class="main special">
				<header class="major">
					<h2>Magna veroeros</h2>
				</header>
				<ul class="features">
					<li><span class="icon major style1 fa-code"></span>
						<h3>Ipsum consequat</h3>
						<p>Sed lorem amet ipsum dolor et amet nullam consequat a
							feugiat consequat tempus veroeros sed consequat.</p></li>
					<li><span class="icon major style3 fa-copy"></span>
						<h3>Amed sed feugiat</h3>
						<p>Sed lorem amet ipsum dolor et amet nullam consequat a
							feugiat consequat tempus veroeros sed consequat.</p></li>
					<li><span class="icon major style5 fa-diamond"></span>
						<h3>Dolor nullam</h3>
						<p>Sed lorem amet ipsum dolor et amet nullam consequat a
							feugiat consequat tempus veroeros sed consequat.</p></li>
				</ul>
				<footer class="major">
					<ul class="actions">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

			<!-- Second Section -->
			<section id="second" class="main special">
				<header class="major">
					<h2>Ipsum consequat</h2>
					<p>
						Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.
					</p>
				</header>
				<ul class="statistics">
					<li class="style1"><span class="icon fa-code-fork"></span> <strong>5,120</strong>
						Etiam</li>
					<li class="style2"><span class="icon fa-folder-open-o"></span>
						<strong>8,192</strong> Magna</li>
					<li class="style3"><span class="icon fa-signal"></span> <strong>2,048</strong>
						Tempus</li>
					<li class="style4"><span class="icon fa-laptop"></span> <strong>4,096</strong>
						Aliquam</li>
					<li class="style5"><span class="icon fa-diamond"></span> <strong>1,024</strong>
						Nullam</li>
				</ul>
				<p class="content">Nam elementum nisl et mi a commodo porttitor.
					Morbi sit amet nisl eu arcu faucibus hendrerit vel a risus. Nam a
					orci mi, elementum ac arcu sit amet, fermentum pellentesque et
					purus. Integer maximus varius lorem, sed convallis diam accumsan
					sed. Etiam porttitor placerat sapien, sed eleifend a enim pulvinar
					faucibus semper quis ut arcu. Ut non nisl a mollis est efficitur
					vestibulum. Integer eget purus nec nulla mattis et accumsan ut
					magna libero. Morbi auctor iaculis porttitor. Sed ut magna ac risus
					et hendrerit scelerisque. Praesent eleifend lacus in lectus aliquam
					porta. Cras eu ornare dui curabitur lacinia.</p>
				<footer class="major">
					<ul class="actions">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

			<!-- Get Started -->
			<section id="cta" class="main special">
				<header class="major">
					<h2>Congue imperdiet</h2>
					<p>
						Donec imperdiet consequat consequat. Suspendisse feugiat congue<br />
						posuere. Nulla massa urna, fermentum eget quam aliquet.
					</p>
				</header>
				<footer class="major">
					<ul class="actions">
						<li><a href="generic.html" class="button special">Get
								Started</a></li>
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul>
				</footer>
			</section>

		</div>

		
		

	</div>

	<!-- Scripts -->
	<script src="/res/assets/js/jquery.min.js"></script>
	<script src="/res/assets/js/jquery.scrollex.min.js"></script>
	<script src="/res/assets/js/jquery.scrolly.min.js"></script>
	<script src="/res/assets/js/skel.min.js"></script>
	<script src="/res/assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/res/assets/js/main.js"></script>

	<p>
		<security:authorize access="isAnonymous()">
			<a class="btn btn-lg btn-primary" href="/sign" role="button">Зареєструватись</a>
		</security:authorize>
	</p>




	<div class="container">
		<div class="col-md-5 pull-right">
			<div class="form-area">
				<form action="findByBrand">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <br style="clear: both"> <input
						type="text" class="form-control" name="brand"
						placeholder="Пошук за моделлю" required> <input
						type="submit" value="Шукати" id="submit" name="submit"
						class="btn btn-primary pull-right">
				</form>
			</div>
		</div>
		<div class="col-md-5 pull-right">
			<div class="form-area">
				<form action="filter">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <br style="clear: both"> <input
						type="text" class="form-control" name="price"
						placeholder="Пошук за ціною" required> <input
						type="submit" value="Шукати" id="submit" name="submit"
						class="btn btn-primary pull-right">
				</form>
			</div>
		</div>
	</div>

</body>
</html>