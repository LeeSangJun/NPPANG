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

<form action="sendchargeall" method="post">
to : <input type="text" id="to_user" name="to_user">
message : <input type="text" id="contents" name="contents">
billing : <input type="text" id="billing_price" name="billing_price">
<input type="submit" value="전송">
</form>
<%= request.getAttribute("error") %>
<%
	if(request.getAttribute("msg") != null){
		List<message_plain> list = (List<message_plain>)request.getAttribute("msg");
		for(message_plain m : list){
			out.println(m.getFrom_user() +", "+m.getContents()+", "+ m.getDate());
		}
	}
%>
</body>
</html>