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
<div class="m_function">
	<ul>
		<li><a class="caption" href="mlist" data-title="ȸ������" data-description="�츮 ���Ƹ��� ȸ������ Ȯ�� �� ���ֽ��ϴ�."><img src="resources/img/member.png"></a></li>
		<li><a class="caption" href="account" data-title="��ΰ���" data-description="�츮 ���Ƹ��� ��θ� ������ �ּ���."><img src="resources/img/moneybag.png"></a></li>
		<li><a class="caption" href="search_m" data-title="�ʴ��ϱ�" data-description="���ο� ȸ������ �ʴ��ϼ���."><img src="resources/img/message.png"></a></li>
	</ul>
</div>
<div class ="notice">
<h1>notice</h1>
	<p>1���޿� ��ũ������ ��Ű���� �� �����Դϴ�.</p>
</div>
</body>
</html>