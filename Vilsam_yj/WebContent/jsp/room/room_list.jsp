<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ page import="dao.RoomDAO"%>
<%@ page import="vo.RoomBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<meta charset="UTF-8">
<title>Vilsam | 상품리스트</title>

<head>

<!-- Favicon  -->
<link rel="icon"
	href="${pageContext.request.contextPath }/img/core-img/favicon.ico">
<!-- Core Style CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/core-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/jsp/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/loginst.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script src="${pageContext.request.contextPath }/js/newjs.js"></script>
<!-- Popper js -->
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<!-- Bootstrap js -->
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<!-- Plugins js -->
<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
<!-- Active js -->
<script src="${pageContext.request.contextPath }/js/active.js"></script>
<style>
table {
	text-align: center;
	width: 100%;
	margin: 0 auto;
	text-align: center;
	border-radius: 5px;
	background-color: #ffffff;
}

table td, tr {
	border: 1px solid #cccccc;
	padding: 2em;
}
</style>
</head>
<body>
	<jsp:include page="/jsp/common/header.jsp" flush="true"></jsp:include>
	<div id="wrap" class="wrap">
		<div class="wrap-inner">
			<!--Signup Section-->
			<div class="section" id="section2">
				<div class="form form--signup">
					<h2>방 리스트</h2>
					<br>
					<table class="outLine" style="width:80%;">
						<c:forEach var="room" items="${articleList}">
							<hr>
							<ul class="list" style="">
  								<li class="list-item">
    							<div class="list-content"> 
      								<h1>${room.room_name}</h1><br>
      								<img src="/Vilsam_yj/upload/room/${room.room_image}" alt="" />
      								<br><br><br>
      								<p>Room Size : ${room.room_size}</p>
      								<a href="#">대여료 : ${room.room_price}</a><br><br>
    							</div>	
  								</li>
								</ul>
								<button onclick="location.href='/Vilsam_yj/roomDetail.room?room_num=${room.room_num}'">상세보기</button>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/jsp/common/footer.jsp" flush="true"></jsp:include>
</body>
</html>