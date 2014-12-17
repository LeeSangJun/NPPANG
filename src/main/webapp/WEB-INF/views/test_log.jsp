<%@page import="java.util.List"%>
<%@page import = "kr.ac.mju.model.financial_log"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

hello world <br>
logs : <br>
<%if(request.getAttribute("fin_log") == null){ %>
<%= request.getAttribute("error") %>
<%}else{
	List<financial_log> finlog= (List<financial_log>)request.getAttribute("fin_log");
	for(financial_log l : finlog){
		out.println(l.getUser_id() +" " + l.getMoney()+" "  + l.getDescription() +" " + l.getDate()+"<br>");
	}

%>
<%} %>

<form action="insertlog" method="post">
user_id :<input type="text" id="id" name="id">
money : <input type="text" id="money" name="money">
desc : <input type="text" id="desc" name="desc">
<input type="submit" value="전송">
</form>

</body>
</html>