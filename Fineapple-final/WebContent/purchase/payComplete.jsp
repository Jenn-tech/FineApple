
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>구매하기</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/complete.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/purchase/payComplete.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>

<style>
.div-container {
	width: 800px;
	margin: 100px auto 0 auto;
	border: 1px solid #d2d6dc;
	box-shadow: 0px 0px 10px 10px white;
	background-color: white;
	height: 500px;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"/>

	
	<header class="cs_func_page_header">
		<div class="cs_category">
			<p>구매하기</p>
			<p>결제하기</p>
			<p>결제완료</p>
		</div>
	</header>
	
	<div class="div-container">
			<section class="section-one">	
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/pay.png">
					</div>
					<h1 class="welcome-head">결제가 완료되었습니다.</h1>
					
				</div>
				<div class="trk-header-align-btn">
					<form action="/Fineapple-final/login/loginfo.jsp" method="POST">
					<input type="submit" value="주문내역으로 이동하기">
					</form>
				</div>
			</section>
		</div>

	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
	<script>
	</script>
</body>
</html>