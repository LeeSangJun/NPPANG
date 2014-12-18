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
</body>
</html>