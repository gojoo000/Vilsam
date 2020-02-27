<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="vo.ProductBean"%>
<%
	ArrayList<ProductBean> articleList = null;

	if (request.getAttribute("articleList") != null) {
		articleList = (ArrayList<ProductBean>) request.getAttribute("articleList");
	} else {
		response.sendRedirect("/Vilsam_yj/productList.pro");
	}
%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Vilsam | Home</title>

<!-- Favicon  -->
<link rel="icon" href="/img/core-img/favicon.ico">

<!-- Core Style CSS-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/core-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/jsp/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/loginst.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.min.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="${pageContext.request.contextPath }/js/newjs.js"></script>
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/plugins.js"></script>
<script src="${pageContext.request.contextPath }/js/active.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>

<body>
	<jsp:include page="/jsp/common/header.jsp" flush="true"></jsp:include>
	<!-- Product Catagories Area Start -->
	<div class="products-catagories-area clearfix">
		<div class="amado-pro-catagory clearfix">
			<c:forEach var="product" items="${articleList}">
				<div class="single-products-catagory clearfix">
					<a href="/Vilsam_yj/productDetail.pro?product_num=${product.product_num }">
						<img src="/Vilsam_yj/upload/product/${product.product_image }" alt="">
						<div class="hover-content">
							<div class="line"></div>
							<input id="PRODUCT_CATEGORY" type="hidden" value="${product.product_category }">
							<p id="PRODUCT_PRICE">&#8361;&nbsp;${product.product_price }</p>
							<h4 id="PRODUCT_NAME">${product.product_name }</h4>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/jsp/common/footer.jsp" flush="true"></jsp:include>
	<!-- 자바스크립트 라이브러리 -->
	<script src="https://kit.fontawesome.com/1773caa337.js" crossorigin="anonymous"></script>
</body>
</html>