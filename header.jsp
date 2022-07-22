<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="header.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<%
	String logout = request.getParameter("logout");

	if(logout != null)
	{
		session.setAttribute("id",null);
		session.setMaxInactiveInterval(0);
	}
	
	String id = (String) session.getAttribute("id");
	if(id == null) 
	{
		id = "";
	}
%>
<div class="container">
	<header>
		<div class="img">
			<a href="#" onclick="location.href='index.jsp'"><img src="img/logo.png" width="70px" height="70px"></a>
		</div>
		<nav>
			<ul>
				<li><a href="">Introduce</a></li>
				<li><a href="#" onclick="location.href='reservation.jsp'">Reservation</a></li>
				<li><a href="">Support</a></li>
				<li class="name">
				<%
					if( id.equals("")){
				%>
				<%= id %> <button class="btn1" value="Login" onclick="location.href='loginForm.jsp'">Login</button>
				<%
						}
					else {
				%>		
				<%= id %>님 <button class="btn1" value="Logout" onclick="location.href='index.jsp?logout=1'">Logout</button>
				<%
					}
				%>
				</li>
			</ul>
		</nav>
	</header>
</div>
</body>
</html>
