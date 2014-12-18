<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nppang</title>
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

		<h3>전체 고지서 메시지</h3>
	<form class="msg" action='sendchargeall' method='post'>
				<p>to</p> <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> <input type='text' id='contents' name='contents'><br/>
				<p>billing</p> <input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> 메세지보내기 </button>
			</form>
		<h3>전체 일반 메시지</h3>
			<form class="msg" action='sendall' method='post'><br/>
				<p>to<p/><input type='text' id='to_user' name='to_user'><br/>
				<p>message</p><input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> 메세지보내기 </button>
			</form>

		<h3>고지서 메시지</h3>
			<form class="msg" action='sendcharge' method='post'><br/>
				<p>to</p><input type='text' id='to_user' name='to_user'><br/>
				<p>message</p><input type='text' id='contents' name='contents'><br/>
				<p>billing</p><input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> 메세지보내기 </button>
			</form>
		<h3>일반 메시지</h3>
			<form class="msg" action='sendplain' method='post'><br/>
				<p>to</p><input type='text' id='to_user' name='to_user'><br/>
				<p>message</p><input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> 메세지보내기 </button>
			</form>
			<form class="m_account" action="insertlog" method="post">
			<ul>
				<li><p>user_id</p><input type="text" id="id" name="id"></li>
				<li><p>금액</p><input type="text" id="money" name="money"></li>
				<li><p>내용</p><input type="text" id="desc" name="desc"></li>
			</ul>
				<button type="submit" value="Submit"> 입력 </button>
			</form>
		<%}
		}%>
</body>
</html>