<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		
		<% if(session.getAttribute("grade") != null){
			if((Integer)session.getAttribute("grade") < 3){ %>
		
		전체 고지서 메시지
			<form action='sendchargeall' method='post'>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				billing : <input type='text' id='billing_price' name='billing_price'><br/>
				<input type='submit' value='���'>
			</form>
		전체 일반 메시지
			<form action='sendall' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				<input type='submit' value='���'>
			</form>
			
		고지서 메시지
			<form action='sendcharge' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				billing : <input type='text' id='billing_price' name='billing_price'><br/>
				<input type='submit' value='���'>
			</form>
		일반 메시지
			<form action='sendplain' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				<input type='submit' value='���'>
			</form>
		<%} 
		}%>
</body>
</html>