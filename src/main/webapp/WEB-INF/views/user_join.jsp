<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div>회원가입</div>
	<div>
		<form action = "Join" method = "POST">
			email : <input type = "text" name = "email"></input>
			name:<input type = "text" name = "name"></input>
			pwd:<input type = "text" name = "pwd"></input>
			description:<input type = "text" name = "description"></input>
			photo:<input type = "text" name = "photo"></input>
			<input type = "submit"></input>
		</form>
	</div>
</body>
</html>