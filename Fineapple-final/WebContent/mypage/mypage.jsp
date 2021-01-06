<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
<link rel="stylesheet" href="../css/UsersJoin/agree.css">
<link rel="stylesheet" href="../css/indexstyle.css">

<script
	src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>
<script src="../js/userjoin/agree.js"></script>

<style>
.table{
	margin : 0 auto;
	text-align :center;
}

.cs_func_page_header {
	width: 100%;
	height: 200px;
	text-align: center;
	padding-top: 55px; 
	border-bottom: 3px solid #000000;
}

.cs_category {
	font-size: 1.5em;
	font-weight: bold;
	margin-top: 40px;
	display: flex;
	justify-content: space-around;
	width: 60%;
	margin: 49px auto 0 auto;
	height: 50px;
}
.cs_category > a {
	display: inline-block;
	width: 150px;
	padding-bottom: 10px;
	color : black;
	text-decoration : none;
}
.cs_category > a:hover {
	border-bottom:6px solid #000000;
}

.cs_category > a:visited {
	color: #000000;
	
}

</style>
</head>

<body>
	<!-- header -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="../main/header.jsp" />

	<%} else {%>

	<jsp:include page="../main/header.jsp" />

	<%} %>
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">마이페이지</h1>
		<div class="cs_category">
			<a href="../mypage/mypage.jsp">정보수정</a>
			<a href="../mypage/cart.jsp">장바구니</a>
			<a href="../mypage/orderlist.jsp">주문내역</a>
			<a href="../mypage/coupon.jsp">쿠폰함</a>
		</div>
	</header>
	
	<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<h1 class="welcome-head">회원정보 수정</h1>
					<hr class="section-hr">
				</div>
			</section>

			<section class="section-two">
				<form class="frm-member" id="frm-member" action="result.jsp" method="POST">
					<div class="frm-label">
						<label>아이디</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-id">
						<input type="text" name="frm-id" placeholder="아이디 입력(10자)">
						<input type="button" name="frm-check" id="id-Check" value="중복확인">
					</div>

					<div class="frm-label">
						<label>현재 비밀번호</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-password">
						<input type="password" name="frm-password" placeholder="비밀번호 자리 8~20자">
					</div>
						
					<div class="frm-label">
						<label>비밀번호 재입력</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-password">
						<input type="password" name="frm-password" placeholder="변경할 비밀번호">
					</div>
						
					<div class="frm-label">
						<label>이름</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-name">
						<input type="text" name="frm-name" placeholder="성명을 입력해주세요.">
					</div>
					
					<div class="frm-label">
						<label>이메일</label>
						<span class="field-required"></span>
					</div>
					<div class="frm-input-email">
						<input type="text" name="frm-email" placeholder="example@gmail.com">
					</div>
					

					<div class="frm-label">
						<label>전화번호</label>
					</div>
					<div class="frm-input-phone">
						<select name="phone_first">
							<option selected >010</option>
							<option>017</option>
						</select>
						<input type="text" name="frm-phone" placeholder="3333-3333">
					</div>

					<div class="frm-label">
						<label>주소</label>
					</div>
					<div class="frm-input-zipcode">
						<input type="text" name="zipcode" placeholder="우편번호">
						<input type="button" name="btnZipcode" id="btnFindZip" value="우편번호검색">
						<input type="text" name="address" placeholder="상세주소">
					</div>
					
					<div class="frm-label">
						<label>생년월일</label>
					</div>
					<div class="frm-input-birth">
						<select>
							
							<% for(int i = 1900; i < 2020; i++) {%>
							<option selected><%= i+1%>년</option>
							<% } %>
						</select>
						
						<select>
							<% for(int i = 0; i < 31; i++) {%>
							<option><%= i+1%>월</option>
							<% } %>
						</select>
						
						<select>
							<% for(int i = 0; i < 12; i++) {%>
							<option><%= i+1%>일</option>
							<% } %>
						</select>

					</div>

					<div class="frm-submit">
						<input type="submit" name="frm-sumbit" value="가입하기">
					</div>
				</form>
			</section>
		</div>
	
	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
</body>
</html>