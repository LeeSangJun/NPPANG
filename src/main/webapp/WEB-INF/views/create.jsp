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
		<nav><a>${name}�� �ȳ��ϼ���</a></nav>
		<span>Nppang</span>
</header>
<form>
	<fieldset class="m_image">
			<p>�̹����� �߰��ϼ���.</p>
			<input type="file" name="front_gate">
			<input type="submit" value="Upload">
		<div>
			<h2>���Ƹ���</h2>
			<input type="text" placeholder="���Ƹ����� �Է��ϼ���.">
		</div>
	</fieldset>
	<fieldset class="m_text">
	<div>
		<h2>���Ƹ� ����</h2>
		<textarea rows="4" cols="50" placeholder="�����ϰ� ���Ƹ��� �������ּ���."></textarea>
		<h2>ī�װ�</h2>
		<input type="text" placeholder="ī�װ��� �����ϼ���.">
	</div>
	</fieldset>
	<button type="submit" value="Submit"> Create </button>
</form>
</body>
</html>