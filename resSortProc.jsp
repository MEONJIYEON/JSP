<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ReservationDB.AddrDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resSortProc.css" >
<script src="https://kit.fontawesome.com/524197c221.js"> 
</script>
</head>
<body>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<jsp:useBean id="adao" class="ReservationDB.AddrDao" scope="application" />
<%
	ArrayList<AddrDo> aList = adao.sortAddr();
%>
<form action="resList.jsp" method="post">
<div class="container3">
	<section>
	<div class="top">
		<h2 class="reservation">예약목록</h2>
		<div class="btn_group">
			<button type="button" class="button1" onclick="location.href='resSortDescProc.jsp'">내림차순으로 정렬</button>
		</div>
	</div>
	<table class="res_table" id="res_table">
  		<thead>
  		<tr>
		    <th scope="cols">예약날짜</th>
		    <th scope="cols">예약시간</th>
		    <th scope="cols">예약인원</th>
		    <th scope="cols">예약자</th>
		    <th scope="cols">연락처</th>
		    <th scope="cols">이메일</th>
		    <th scope="cols">요청사항</th>
		</tr>
		</thead>
<%
	for(int i=0; i< aList.size(); i++){
		AddrDo aBean = aList.get(i);
%>
		<tbody>
		  	<tr>
		    	<td><%=aBean.getDate() %></th>
			    <td><%=aBean.getTime() %></th>
			    <td><%=aBean.getCount() %></th>
			    <td><%=aBean.getName() %></th>
			    <td><%=aBean.getTel() %></th>
			    <td><%=aBean.getEmail() %></th>
			    <td><%=aBean.getRequest() %></th>	
			</tr>
		</tbody>
<% 
	}

%>
	</table>
	<div class="submit">
			<input type="submit" value="예약목록으로" id="submit" >
	</div>
	</section>
</div>
</form>
</body>
</html>