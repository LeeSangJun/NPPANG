<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nppang</title>
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mypage.css" />
<link rel="stylesheet" type="text/css" href="resources/css/m_list.css" />
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/search.js"></script>
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
		<span>Nppang</span>
</header>
	<div class="side">
		<nav class="menu">
			<jsp:include page="msg.jsp" >
		</nav>
	</div>
	<div id="toggle-search">
	</div>
<div class="m_container">
		<h1><span>Member List</span></h1>
	</div>
	<div class="list">
		<div class="m_name">
			<h2>이름</h2>
			<a>이유경</a>
		</div>
		<div class="m_mail">
			<h2>메일</h2>
			<a>leeyu823@gmail.com</a>
		</div>
		<div class="m_message">
			<h2>자기소개</h2>
			<a>한학기 동안 열심히 하겠습니다.</a>
		</div>
		<div class="m_grade">
			<h2>회원등급</h2>
			<a>일반회원</a>
		</div>
	</div>

</div>
</body>
</html>