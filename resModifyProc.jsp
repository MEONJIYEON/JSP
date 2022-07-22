<%@page import="ReservationDB.AddrDo"%>
<%@page import="ReservationDB.AddrDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resModifyProc.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="ado" class="ReservationDB.AddrDo" />
<jsp:setProperty name="ado" property="*" />
<jsp:useBean id="adao" class="ReservationDB.AddrDao" scope="application"/>
<%
	adao.modifyAddr(ado);
	response.sendRedirect("resList.jsp");
%>
</body>
</html>