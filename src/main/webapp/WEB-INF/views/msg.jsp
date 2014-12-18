<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="resources/css/msg.css" />
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
		<h3>전체 고지서 메시지</h3>
	<form class="msg" action='sendchargeall' method='post'>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<p>billing</p> : <input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> 전송 </button>
			</form>
		<h3>일반 전체 메시지</h3>
			<form class="msg" action='sendall' method='post'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> 전송 </button>
			</form>

		<h3>고지서 메시지</h3>
			<form class="msg" action='sendcharge' method='post'><br/>
				<p>to</p> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<p>billing</p> : <input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> 전송 </button>
			</form>
		<h3>일반 메시지</h3>
			<form class="msg" action='sendplain' method='post'><br/>
				<p>to</p> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> 전송 </button>
			</form>

</body>
</html>