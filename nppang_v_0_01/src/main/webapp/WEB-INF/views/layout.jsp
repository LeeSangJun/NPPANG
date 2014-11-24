<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="UTF-8">
	<title>레이아웃</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<style type="text/css">
	.head{
		background-color: gray;
		height: 80px;
	}
	.container{
		height: 800px;
		padding: 0px;
	}
	.left{
		background-color: skyblue;
		height: 800px;
	}
	.right{
		background-color: yellow;
		height: 800px;
	}
	.username{
		float: left;
		margin-top: 30px; 
	}
	.logout{
		float: right;
		margin-top: 50px; 
	}
	#menu ul{
		margin-top: 10px;
		padding-left: 0px;
	}
	#menu ul li{
		list-style-type: none;
		margin-top: 10px;
		font-size: 20px;
	}
	.short-window{
		height: 300px;
		width: 100%;
		background-color: white;
	}
	</style>

</head>
<body>
	<div id="container" class="container">
		<div id="head" class="col-md-12 head">
			<span class="username">{}님 환영합니다.</span>
			<span class="logout">로그아웃</span>
		</div>
		<div id="menu" class="col-md-3 left">
			<ul>
				<li>메뉴1</li>
				<li>메뉴2</li>
				<li>메뉴3</li>
				<li>메뉴4</li>
				<li>
					<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
						메뉴 보기
					</button>
				</li>
			</ul>
			<div class="short-window">
				여기는 작은 명령창입니다.
			</div>
		</div>
		<div id="contents" class="col-md-9 right">
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