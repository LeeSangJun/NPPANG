<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>레이아웃</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<style type="text/css">

	</style>
	<link href="resources/css/layout.css" rel="stylesheet">
	<!-- css와  js의 주소는 모두 resources/css/ 로 시작한다. -->
</head>
<body>
	<div id="container" class="container">
		<div id="head" class="col-md-12 top-menu-v3">
			<span class="top-logo"><p>DongCount</p></span>
			<span class="member-menu">
				<ul>
					<li>join</li>
					<li>login</li>
				</ul>
			</span>
		</div>
		<div id="contents" class="col-md-12 main">
			<div id="login" class="col-md-4 col-md-offset-4 center-panel">
				hello
			</div>
		</div>

		<div class="col-md-12 bottom">
			bottom
		</div>
	</div>

</body>
</html>