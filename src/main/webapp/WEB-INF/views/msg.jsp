<%@page import="kr.ac.mju.model.message_plain"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<<<<<<< HEAD
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" type="text/css" href="resources/css/msg.css" />
</head>
<body>
	<form class="msg" action='sendchargeall' method='post'>
				<p>to</p> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<p>billing</p> : <input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> ë©ì¸ì§ë³´ë´ê¸° </button>
			</form>
		<h3>ì ì²´ ì¼ë° ë©ìì§</h3>
			<form class="msg" action='sendall' method='post'><br/>
				<p>to<p/> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> ë©ì¸ì§ë³´ë´ê¸° </button>
			</form>

		<h3>ê³ ì§ì ë©ìì§</h3>
			<form class="msg" action='sendcharge' method='post'><br/>
				<p>to</p> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<p>billing</p> : <input type='text' id='billing_price' name='billing_price'><br/>
				<button type="submit" value="Submit"> ë©ì¸ì§ë³´ë´ê¸° </button>
			</form>
		<h3>ì¼ë° ë©ìì§</h3>
			<form class="msg" action='sendplain' method='post'><br/>
				<p>to</p> : <input type='text' id='to_user' name='to_user'><br/>
				<p>message</p> : <input type='text' id='contents' name='contents'><br/>
				<button type="submit" value="Submit"> ë©ì¸ì§ë³´ë´ê¸° </button>
			</form>
=======
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="resources/css/msg.css" />
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

		<%}
		}%>
>>>>>>> eba287db374a17662a6e3a43193dc1777846537e
</body>
</html>