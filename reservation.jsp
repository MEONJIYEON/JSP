<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="reservation.css">
<script src="https://kit.fontawesome.com/524197c221.js"></script>
</head>
<body>
<header>
	<%@ include file ="header.jsp" %>
</header>
<hr>
<div class="container">
	<section id="content">
			<div class="item">
				<div class="img">
					<a href="review.jsp"><img src="img/cafe.jpeg" class="cafe1"></a>	
				</div>
				<div class="info">
					<h3 class="fn-font" onclick="location.href='selProduct.jsp'" style="cursor:pointer">초심스터디카페 광진구청점</h3>
					<div class="fn-font1">
						구의동 | 
					</div>
					<div class="fn-font2">
						#초심 #초심스터디카페 #광진구스터디카페 
					</div>
					<div class="fn-font3">
					    2000 
					</div>
					<div class="fn-font4">
						원/시간
					</div>
					<div class="button-row">
						<button class="btn fn-font btn-sm" onclick="location.href='resForm.jsp'">예약하기</button>
					</div>
				</div>
			</div>
			<div class="item">			
				<div class="img">
					<a href="review.jsp"><img src="img/cafe2.jpeg" class="cafe2"></a>
				</div>
				<div class="info">
					<h3 class="fn-font">위넌스터디카페 한양대점</h3>
					<div class="fn-font1">
						행당동 | 
					</div>
					<div class="fn-font2">
						#스터디카페 #한양대스터디카페 #한양대스터디룸
					</div>
					<div class="fn-font3">
						1500
					</div>
					<div class="fn-font4">
						원/시간
					</div>
					<div class="button-row">
						<button class="btn fn-font btn-sm" onclick="location.href='resForm.jsp'">예약하기</button>
					</div>
				</div>
			</div>
			<div class="item">
				<div class="img">
					<a href="review.jsp"><img src="img/cafe3.jpeg" class="cafe3"></a>
				</div>
				<div class="info">
					<h3 class="fn-font">서당스터디라운지 건대점</h3>
					<div class="fn-font1">
						화양동 | 
					</div>
					<div class="fn-font2">	
						#스터디카페 #건대스터디카페 #스터디라운지
					</div>
					<div class="fn-font3">
						1500
					</div>
					<div class="fn-font4">
						원/시간
					</div>
					<div class="button-row">
						<button class="btn fn-font btn-sm" onclick="location.href='resForm.jsp'">예약하기</button>
					</div>
				</div>
			</div>
	</section>
<br>
</div>
<footer>
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>