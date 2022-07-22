<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resSearch.css" >
<script src="https://kit.fontawesome.com/524197c221.js">
</script>
</head>
<body>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<form action="resSearchList.jsp" method="post">
<%
	request.setCharacterEncoding("utf-8");
%>
<div class="container3">
	<section>
	<div class="top">
		<h2 class="reservation">예약 검색하기</h2>
	</div>
	</section>
	<div class="bottom">
		<div class="input">예약자명을 입력해주세요</div>
		<input type="text" name="name" id="name">
	</div>
	<div class="submit">
		<input type="submit" value="예약 검색하기" id="submit" >
	</div>
</div>
</form>
</body>
</html>