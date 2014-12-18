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
<script src="resources/js/jquery-2.0.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

   <script>
	$(document).ready(function(){
			$("#search_btn").click(function(){
				var search_keyword = $("#search_keyword").val();
				$.post("search_member",{
					search_keyword:search_keyword
				},function(data){
					var obj = jQuery.parseJSON(data);
					$("#search_result tbody").empty();
					for(var user in obj){
						$("#search_result tbody").append("<tr class ='user_id "+obj[user].id+"''><td class = 'name'>"+obj[user].name+
								"</td><td class = 'mail'>"+obj[user].email+
								"</td><td class = 'intro'>"+obj[user].description+
								"</td></tr>");
						//alert(obj[user].description);
					}
				});
			});

			$("#send_msg").click(function(){
				$("#sortable2 .temp").remove();
				var test = $("#sortable2 .user_id");
				alert(test[0].classList[1]);
			});


		 $( "#sortable1, #sortable2" ).sortable({
		      connectWith: ".connectedSortable"
		    }).disableSelection();
	});
	</script>
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
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
			<input id = "search_keyword" class="search-input" name="query" placeholder="SEARCH">
			<button id = "search_btn" class="search-icon" value=""></button>
		</div>

		<div class="search-bar">
			<h1><span>result</span></h1>
		</div>

		<div id = "search_result"class="list">
		<div class="list">
			<table class = "member_list">
				<thead>
				<tr>
					<td class = "name"><h2>이름</h2></td>
					<td class = "mail"><h2>메일</h2></td>
					<td class = "intro"><h2>자기소개</h2></td>
					<td class = "intro"><h2>비고</h2></td>
				</tr>
				</thead>
				<tbody id = "sortable1" class = "connectedSortable">
				<!-- 추가포지션 -->
				</tbody>
			</table>
		</div>
		</div>

		<div class="search-bar">
			<h1><span>Member</span></h1>
		</div>

	<div id = "invite_list" class="list">
		<div class="list">
		<table class = "member_list">
			<thead>
			<tr>
				<td class = "name"><h2>이름</h2></td>
				<td class = "mail"><h2>메일</h2></td>
				<td class = "intro"><h2>자기소개</h2></td>
			</tr>
			</thead>
			<tbody id = "sortable2" style = "min-height: 20px;display:inline-bolck;" class = "connectedSortable">
				<!-- 추가포지션 -->
			<tr class = "temp">
				<td class = "name"></td>
				<td class = "mail"></td>
				<td class = "intro"></td>
			</tr>
			</tbody>
		</table>
		<button id = "send_msg">초대하기</button>
	</div>
	</div>

</div>
</body>
</html>