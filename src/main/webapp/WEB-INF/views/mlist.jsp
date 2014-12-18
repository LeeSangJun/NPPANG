<%@page import="kr.ac.mju.model.member_info"%>
<%@page import="kr.ac.mju.model.moim"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nppang</title>
<link rel="stylesheet" type="text/css" href="resources/css/m_list.css" />
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/mypage.css" />
<script src="resources/js/modernizr.custom.js"></script>
<script src="resources/js/search.js"></script>
</head>
<body>
<header>
		<nav><a href="logout">LOGOUT</a></nav>
		<nav><a>${name}님 안녕하세요</a></nav>
		<span>Nppang</span>
</header>
	<div class="side">
		<nav class="menu">
		</nav>
	</div>
	<div id="toggle-search">
	</div>
<div class="m_container">
		<h1><span> Member List</span></h1>
	</div>
	<div class="list">
		<table class = "member_list">
			<tr>
				<td class = "name"><h2>이름</h2></td>
				<td class = "mail"><h2>메일</h2></td>
				<td class = "intro"><h2>자기소개</h2></td>
				<td class = "grade"><h2>회원등급</h2></td>
				<td class = "etc"><h2>비고</h2></td>
			</tr>
			<%
			List<member_info> list;
			if(request.getAttribute("member_list") != null){
				list = (List<member_info>)request.getAttribute("member_list");
				if(request.getAttribute("grade") != null){
					for(member_info m : list){
					%>
					<tr class = "<%= m.getId()%>">
						<td><%= m.getName() %></td>
						<td><%= m.getEmail() %></td>
						<td><%= m.getDescription() %></td>
						<td><% if(m.getGrade()==1){%>관리자
							<% }else if(m.getGrade()==2){%>총무
							<% }else{%>일반회원
							<%}%>
						</td>
						<td><button>upgrade</button></td>
					</tr>
					<%
					}
				}else{
					for(member_info m : list){
					%>
						<tr class = "<%= m.getId()%>">
							<td><%= m.getName() %></td>
							<td><%= m.getEmail() %></td>
							<td><%= m.getDescription() %></td>
							<td><% if(m.getGrade()==1){%>관리자
							<% }else if(m.getGrade()==2){%>총무
							<% }else{%>일반회원
							<%}%></td>
							<td>-</td>
						</tr>
					<%
					}
				}
			}
			%>

		</table>

	</div>
</div>

</body>
</html>