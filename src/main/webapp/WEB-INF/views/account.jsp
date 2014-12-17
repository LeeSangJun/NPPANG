<%@page import="kr.ac.mju.model.financial_log"%>
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
		<jsp:include page="msg.jsp" />
	</nav>
</div>
<div class="m_container">
	<div class="Atable">
		<table>
			<tr>
				<th colspan="5"><h1><span>Account Book</span></h1></th>
			</tr>
			<tr>
				<td>날짜</td>
				<td>내용</td>
				<td>수입</td>
				<td>지출</td>
				<td>잔액</td>
			</tr>
			<%
				if(request.getAttribute("fin_log") != null){
					List<financial_log> flist = (List<financial_log>)request.getAttribute("fin_log");
					for(financial_log f : flist){
						%>
						<tr>
							<td><a><%=f.getDate() %></a></td>
							<td><a><%= f.getDescription() %></a></td>
							<% if(f.getMoney() >= 0){ %>
								<td><a><%= f.getMoney() %>원</a></td>
								<td><a>0원</a></td>
							<%}else{ %>
								<td><a>0원</a></td>
								<td><a><%= f.getMoney() %>원</a></td>
							
							<%} %>
							<td><a>500,000원</a></td>
						</tr>
						<%
					}
				}
			%>
			<tr>
				<td><a>12월 12일</a></td>
				<td><a>baytree정모 - 토즈</a></td>
				<td><a>0원</a></td>
				<td><a>40,000원</a></td>
				<td><a>460,000원</a></td>
			</tr>
			<tr>
				<td></td>
				<td><a>baytree회식 - 설레임</a></td>
				<td><a>0원</a></td>
				<td><a>120,000원</a></td>
				<td><a>340,000원</a></td>
			</tr>
			<tr>
				<td></td>
				<td><a>baytree후식</a></td>
				<td><a>0원</a></td>
				<td><a>73,000원</a></td>
				<td><a>267,000원</a></td>
			</tr>
		</table>
		입출금 내역 추가
		<% if((Integer)(session.getAttribute("grade")) < 3){ %>
			<form action="insertlog" method="post">
				user_id :<input type="text" id="id" name="id"> 
				money : <input type="text" id="money" name="money"> 
				desc : <input type="text" id="desc" name="desc"> 
				<input type="submit" value="전송">
			</form>
		<%} %>
	</div>
</div>
</div>
</body>
</html>