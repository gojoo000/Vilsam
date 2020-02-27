<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Title  -->
<title>Product Details</title>

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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style type="text/css">
#writeForm{text-align:center; margin:0 auto; width:400px;}
#writeForm h2{margin-bottom:30px;}
</style>
</head>
<body>
	<!-- 게시판 등록 -->
	<jsp:include page="/jsp/common/header.jsp" flush="true"></jsp:include>
	<div id="wrap" class="wrap">
		<div class="wrap-inner">
			<!--Signup Section-->
			<div class="section" id="section2">
				<div class="form form--signup">
					<section id="writeForm">
						<h2>상품등록</h2>
						<form action="/Vilsam_yj/productWritePro.pro" method="post"
							enctype="multipart/form-data" name="productform">
							<table>
								<tr>
									<td><label for="PRODUCT_NAME">상품명</label></td>
									<td class=""><input name="PRODUCT_NAME" type="text"
										id="PRODUCT_NAME" required="required" class="inputbox" /></td>
								</tr>
								<tr>
									<td class=""><label for="PRODUCT_PRICE">가격</label></td>
									<td class=""><input name="PRODUCT_PRICE" type="text"
										id="PRODUCT_PRICE" required="required" class="inputbox" /></td>
								</tr>
								<tr>
									<td><label>카테고리 : </label></td>
									<td><select id="PRODUCT_CATEGORY" name="PRODUCT_CATEGORY"
										required="required">
											<option value="furniture">furniture</option>
											<option value="deco">deco</option>
									</select></td>

								</tr>
								<tr>
									<td class=""><label for="PRODUCT_IMAGE"> 파일 첨부 </label></td>
									<td class=""><input name="PRODUCT_IMAGE" type="file"
										id="PRODUCT_IMAGE" required="required" class="inputbox" /></td>
								</tr>
							</table>

							<input type="submit" value="등록" class="btst">&nbsp;&nbsp;
							<input type="reset" value="다시쓰기" class="btst" />

						</form>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- 게시판 등록 -->
	<jsp:include page="/jsp/common/footer.jsp" flush="true"></jsp:include>
</body>
</html>