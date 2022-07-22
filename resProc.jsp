<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resProc.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="ado" class="ReservationDB.AddrDo">
	<jsp:setProperty name="ado" property="*" />
</jsp:useBean>
<%
	//체크박슨 여러개가 선택될 수 있기 때문에, 아래의 처리가 필요
	String[] countArray = request.getParameterValues("count");
	String countTemp = "";
	for(int i=0; i< countArray.length; i ++){
		countTemp += countArray[i] + " ";
	}	
	ado.setCount(countTemp);

%>
<jsp:useBean id="adao" class="ReservationDB.AddrDao" scope="application" />
<%
	adao.insertAddr(ado);
%>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<form action="resList.jsp" method="post">
<div class="container3">
	<section>
	<div class="top">
		<h2 class="reservation">예약확인</h2>
	</div>
	<div id="content">
		<div class="item1">
			<div class="_design">
				<h3>예약 정보</h3>
				<ul>
					<li>예약날짜</li>
					<li><%=ado.getDate() %></li>
				</ul>
				<ul>
					<li>예약시간</li>
					<li><%=ado.getTime() %></li>
				</ul>
				<ul>
					<li>예약인원</li>
					<li><%=ado.getCount() %></li>
				</ul>
			</div>
		</div>
		<div class="item2">
			<div class="_design1">
				<h3>예약자 정보</h3>
				<ul>
					<li>예약자</li>
					<li><%=ado.getName() %></li>
				</ul>
				<ul>
					<li>연락처</li>
					<li><%=ado.getTel() %></li>
				</ul>
				<ul>
					<li>이메일</li>
					<li><%=ado.getEmail() %></li>
				</ul>
				<ul>
					<li>요청사항</li>
					<li><%=ado.getRequest() %></li>
				</ul>
			</div>
		</div>
		<div class="submit">
			<input type="submit" value="예약목록보기" id="submit" >
		</div>
	</div>
</section>
</div>
</form>
</body>
</html>