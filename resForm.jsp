<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resForm.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<form action="resProc.jsp" method="post">
<div class="container3">
	<section>
	<div class="top">
		<h2 class="reservation">예약하기</h2>
	</div>
	<div id="content">
		<div class="item1">
			<div class="_design">
				<h3>예약 정보</h3>
				<ul>
					<li>예약날짜</li>
					<li><input id="input" type="text" name="date"></li>
				</ul>
				<ul>
					<li>예약시간</li>
					<li><input id="input" type="text" name="time"></li>
				</ul>
				<ul>
					<li>예약인원</li>
					<li>
					<input id="count" type="checkbox" name="count" value="1명" > 1명
					<input id="count" type="checkbox" name="count" value="2명" > 2명
					<input id="count" type="checkbox" name="count" value="3명" > 3명 
					<input id="count" type="checkbox" name="count" value="4명 이상" > 4명 이상
					</li>
				</ul>
			</div>
		</div>
		<div class="item2">
			<div class="_design1">
				<h3>예약자 정보</h3>
				<ul>
					<li>예약자</li>
					<li><input id="input" type="text" name="name"></li>
				</ul>
				<ul>
					<li>연락처</li>
					<li><input id="input" type="text" name="tel"></li>
				</ul>
				<ul>
					<li>이메일</li>
					<li><input id="input" type="text" name="email"></li>
				</ul>
				<ul>
					<li>요청사항</li>
					<li><input id="input" type="text" name="request"></li>
				</ul>
			</div>
		</div>
		<div class="submit">
			<input type="submit" value="예약하기" id="submit">
		</div>
	</div>
</section>
</div>
</form>
</body>
</html>