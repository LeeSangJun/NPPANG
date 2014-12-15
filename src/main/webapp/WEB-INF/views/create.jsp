<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Nppang</title>
	<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="resources/css/create.css" />
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
		<span>Nppang</span>
</header>
<form>
	<fieldset class="m_image">
			<p>이미지를 추가하세요.</p>
			<input type="file" name="front_gate">
			<input type="submit" value="Upload">
		<div>
			<h2>동아리명</h2>
			<input type="text" placeholder="동아리명을 입력하세요.">
		</div>
	</fieldset>
	<fieldset class="m_text">
	<div>
		<h2>동아리 설명</h2>
		<textarea rows="4" cols="50" placeholder="간략하게 동아리를 설명해주세요."></textarea>
		<h2>카테고리</h2>
		<input type="text" placeholder="카테고리를 설정하세요.">
	</div>
	</fieldset>
	<button type="submit" value="Submit"> Create </button>
</form>
</body>
</html>