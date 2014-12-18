<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>Nppang</title>
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/index.css" />
	<script type="text/javascript" src="resources/js/modernizr.custom.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<noscript>
		<link rel="stylesheet" type="text/css" href="resources/css/nojs.css" />
	</noscript>
	<!-- css와  js의 주소는 모두 resources/css/ 로 시작한다. -->
</head>
<body>
<header>
		<nav><a href="./login">Login</a></nav>
		<nav><a href="./login#toregister">Join</a></nav>
		<span>Nppang</span>
</header>
	<div class="container">
		<div id="slider" class="slider">
			<div class="slide">
				<h2>회비관리?</h2>
				<p>잦은 친목모임, 동아리모임에서 회비를 좀 더 쉽게 관리할 수 없을까?</p>
				<div class="back_image"></div>
			</div>
			<div class="slide">
				<h2>엔빵으로 해결하자</h2>
				<p>소모임에서 부터 단체까지 회비의 입,출금을 관리한다.</p>
				<div class="back_image"></div>
			</div>
			<div class="slide">
				<h2>엔빵에 가입하기</h2>
				<p>오른쪽 상단에 Join을 클릭하세요.</p>
				<div class="back_image"></div>
			</div>
			<nav class="arrows">
				<span class="arrows-prev"></span>
				<span class="arrows-next"></span>
			</nav>
		</div>
		<ul>
		<li><img src="resources/img/meeting.png"/></li>
		<li><img src="resources/img/slidemoney.png"/></li>
		<li><img src="resources/img/nppang.png"/></li>
		</ul>
	</div>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#slider').cslider();
		});
	</script>
</body>
</html>