<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
		<nav><a>${name}�� �ȳ��ϼ���</a></nav>
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
	<div id="toggle-search">
	</div>
<div class="m_container">
	<div class="search-bar">
		<form>
			<input class="search-input" name="query" placeholder="SEARCH">
			<input type="submit" class="search-icon" value="">
		</form>
		<h1><span>Member</span></h1>
	</div>
	<div class="list">
		<div class="m_name">
			<h2>�̸�</h2>
			<a>������</a>
		</div>
		<div class="m_mail">
			<h2>����</h2>
			<a>leeyu823@gmail.com</a>
		</div>
		<div class="m_message">
			<h2>�ʴ�޼���</h2>
			<a>Nppang�� �ʴ��մϴ�.</a>
		</div>
		<div class="m_grade">
			<h2>ȸ�����</h2>
			<a>�Ϲ�ȸ��</a>
		</div>
	</div>
</div>
</body>
</html>