<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
		
		��ü �޽��� ������
			<form action='sendchargeall' method='post'>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				billing : <input type='text' id='billing_price' name='billing_price'><br/>
				<input type='submit' value='����'>
			</form>
		��ü �޽��� �Ϲ�
			<form action='sendall' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				<input type='submit' value='����'>
			</form>
			
		������ �޽���
			<form action='sendcharge' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				billing : <input type='text' id='billing_price' name='billing_price'><br/>
				<input type='submit' value='����'>
			</form>
		�Ϲ� �޽���
			<form action='sendplain' method='post'><br/>
				to : <input type='text' id='to_user' name='to_user'><br/>
				message : <input type='text' id='contents' name='contents'><br/>
				<input type='submit' value='����'>
			</form>
		<%} 
		}%>
</body>
</html>