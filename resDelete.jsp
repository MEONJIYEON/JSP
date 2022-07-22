<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="adao" class="ReservationDB.AddrDao" />

<%
	int num = Integer.parseInt(request.getParameter("num"));
	adao.deleteAddr(num);	
	response.sendRedirect("resList.jsp");
%>

</body>
</html>