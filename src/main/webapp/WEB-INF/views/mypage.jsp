<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="kr.ac.mju.model.moim"%>
<%@page import="java.util.List"%>
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
<script src="resources/js/modernizr.custom.js"></script>
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
		<% 	List<message_plain> msglist;
			if((msglist = (List<message_plain>)request.getAttribute("msglist")) != null){ 
				for(message_plain msg : msglist){
					%>
						<a href="#"><%=msg.getContents() %></a>
					
					<%
				}
			}
		%>
	</nav>
</div>
<div class="my_bang">
	<ul class="grid effect" id="grid">
		<li><a href="create"><img src="resources/img/new.png"></a></li>
		<%
		List<moim> list;
		if(request.getAttribute("moimlist") != null){ 
			list = (List<moim>)request.getAttribute("moimlist");
			for(moim m : list){
			%>
			<li><a class="caption" href="bang?moim_id<%= m.getMoim_id() %>" data-title="<%=m.getMoim_name() %>" data-description="<%=m.getDescription()%>"><img src="resources/img/test01.jpg"></a></li>
			<%	
			}
		}
		%>
		
	</ul>
</div>

</body>
</html>