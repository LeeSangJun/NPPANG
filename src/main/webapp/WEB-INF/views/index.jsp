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
		<div id="head" class="col-md-12 head">
		<% if(request.getAttribute("error") != null){ %>
			<%= request.getAttribute("error") %>
		<%} %>
			<span class="username">
				<% if(session.getAttribute("userId") != null){ %>
					<%= session.getAttribute("userId") %>님 환영합니다.
				<%} %>
			</span>
			<span class="logout">		
			<% if(session.getAttribute("userId") == null){ %>
				<form method="post" action="login">
					<input name="userId">
					<input type="submit"  value="로그인"/>
				</form> 
			<%}else{ %>
				<form method="post" action="logout">
					<input type="submit"  value="로그아웃"/>
				</form>
			<%} %>
			</span>
		</div>
		<div id="contents" class="col-md-12 right">
			<!-- Button trigger modal -->

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							...
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save changes</button>
						</div>
					</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
			<!-- end Modal -->

		<!-- contents -->


		<!-- /contents -->
		</div>
	</div>
	
</body>
</html>