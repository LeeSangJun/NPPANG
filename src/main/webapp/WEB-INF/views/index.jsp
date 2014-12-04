<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Nppang</title>
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<script type="text/javascript" src="resources/js/modernizr.custom.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<noscript>
		<link rel="stylesheet" type="text/css" href="resources/css/nojs.css" />
	</noscript>
	<!-- css와  js의 주소는 모두 resources/css/ 로 시작한다. -->
</head>
<body>
<header>
		<nav><a href="./login.jsp">Login</a></nav>
		<nav><a>Join</a></nav>
		<span>Nppang</span>
</header>
<div class="container">
		<div id="slider" class="slider">
			<div class="slide">
				<h2>TEST01</h2>
				<div class="back_image"></div>
			</div>
			<div class="slide">
				<h2>TEST02</h2>
				<div class="back_image"></div>
			</div>
			<div class="slide">
				<h2>TEST03</h2>
				<div class="back_image"></div>
			</div>
			<nav class="arrows">
				<span class="arrows-prev"></span>
				<span class="arrows-next"></span>
			</nav>
		</div>
	</div>
	<script type="text/javascript" src="resources/js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#slider').cslider();
		});
	</script>
</body>
</html>