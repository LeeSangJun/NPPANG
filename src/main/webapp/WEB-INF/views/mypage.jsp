<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Nppang</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mypage.css" />
<link rel="stylesheet" type="text/css" href="resources/css/bang.css" />
<script src="resources/js/modernizr.custom.js"></script>
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
		<span>Nppang</span>
</header>
<div class="side">
	<nav class="menu">
		<h3>Message</h3>
		<a href="#">new test01</a>
		<a href="#">new test02</a>
		<a href="#">new test03</a>
	</nav>
</div>
<div class="my_bang">
	<ul class="grid effect" id="grid">
		<li><a href="create"><img src="resources/img/new.png"></a></li>
		<li><a class="caption" href="bang1" data-title="코딩 동아리" data-description="자기가 원하는 웹서비스를 개발하자!"><img src="resources/img/test01.jpg"></a></li>
		<li><a class="caption" href="bang2" data-title="농구 동아리" data-description="농구하면서 친목을 쌓아요!"><img src="resources/img/test02.jpg"></a></li>
		<li><a class="caption" href="bang3" data-title="먹방 동아리" data-description="맛집을 탐방합시다!! "><img src="resources/img/test03.jpg"></a></li>
		<li><a class="caption" href="bang1" data-title="여행 동아리" data-description="여행가자 눈누난나~"><img src="resources/img/test04.jpg"></a></li>
	</ul>
</div>

</body>
</html>