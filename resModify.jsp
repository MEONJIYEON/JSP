<%@page import="java.util.Arrays"%>
<%@page import="ReservationDB.AddrDo"%>
<%@page import="ReservationDB.AddrDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resModify.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<jsp:useBean id="adao" class="ReservationDB.AddrDao" scope="application">
</jsp:useBean>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	AddrDo aBean = adao.getOneAddress(num);
	
	String[] checkName = {"1명", "2명", "3명", "4명 이상"};
	Boolean[] checkFlag = new Boolean[4];
	Arrays.fill(checkFlag, false);
	
	for(int i=0; i<checkName.length; i++){
		if(aBean.getCount().indexOf(checkName[i]) != -1){
			checkFlag[i] = true;
		}
	}
%>

<form action="resModifyProc.jsp" method="post">
<div class="container3">
	<section>
	<div class="top">
		<h2 class="reservation">예약수정</h2>
	</div>
	<div id="content">
		<div class="item1">
			<div class="_design">
				<h3>예약 정보</h3>
				<ul>
					<li>예약날짜</li>
					<li>
					<input id="input" type="text" name="date" value="<%=aBean.getDate() %>"></li>
				</ul>
				<ul>
					<li>예약시간</li>
					<li><input id="input" type="text" name="time" value="<%=aBean.getTime() %>"></li>
				</ul>
				<ul>
					<li>예약인원</li>
					<li>
					<input id="count" type="checkbox" name="count" value="1명"
					<%= checkFlag[0] ? "checked":"" %>>1명
					</li>
					<li>
					<input id="count" type="checkbox" name="count" value="2명"
					<%= checkFlag[1] ? "checked":"" %>>2명
					</li>
					<li>
					<input id="count" type="checkbox" name="count" value="3명"
					<%= checkFlag[2] ? "checked":"" %>>3명
					</li>
					<li>
					<input id="count" type="checkbox" name="count" value="4명 이상"
					<%= checkFlag[3] ? "checked":"" %>>4명 이상
					</li>
				</ul>
			</div>
		</div>
		<div class="item2">
			<div class="_design1">
				<h3>예약자 정보</h3>
				<ul>
					<li>예약자</li>
					<li><input id="input" type="text" name="name" value="<%=aBean.getName() %>"></li>
				</ul>
				<ul>
					<li>연락처</li>
					<li><input id="input" type="text" name="tel" value="<%=aBean.getTel() %>"></li>
				</ul>
				<ul>
					<li>이메일</li>
					<li><input id="input" type="text" name="email" value="<%=aBean.getEmail() %>"></li>
				</ul>
				<ul>
					<li>요청사항</li>
					<li><input id="input" type="text" name="request" value="<%=aBean.getRequest() %>"></li>
				</ul>
			</div>
		</div>
	<div class="submit">
		<input type="hidden" name="num" value="<%=aBean.getNum() %>">
		<input type="submit" value="예약수정하기" id="submit" >
	</div>
	</div>
</section>
</div>
</form>
</body>
</html>