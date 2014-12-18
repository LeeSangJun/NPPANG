<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Nppang</title>
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/mypage.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/bang.css" />
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
		<span>Nppang</span>
</header>
<div class="side">
	<nav class="menu">
		<jsp:include page="msg.jsp" />
	</nav>
</div>
<div class="m_function">
	<ul>
		<li><a class="caption" href="mlist" data-title="회원관리" data-description="우리 동아리의 회원들을 확인 할 수있습니다."><img src="resources/img/member.png"></a></li>
		<li><a class="caption" href="account" data-title="장부관리" data-description="우리 동아리의 장부를 관리해 주세요."><img src="resources/img/moneybag.png"></a></li>
		<li><a class="caption" href="invite" data-title="초대하기" data-description="새로운 회원들을 초대하세요."><img src="resources/img/message.png"></a></li>
	</ul>
</div>
<div class ="notice">
<h1>notice</h1>
	<p>1월달에 워크샵으로 스키장을 갈 예정입니다.</p>
</div>
</body>
</html>