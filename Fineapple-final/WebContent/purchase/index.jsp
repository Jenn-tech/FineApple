
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="users.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/purchase/purchase.css">
<link rel="stylesheet" href="../css/UsersJoin/agree.css">
<link rel="stylesheet" href="../css/indexstyle.css">


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>
<script src="../js/userjoin/mypage.js"></script>

<style>
.div-container {
	width: 800px;
	margin: 100px auto 0 auto;
	border: 1px solid #d2d6dc;
	box-shadow: 0px 0px 10px 10px white;
	background-color: white;
	height: 170vh;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="../main/header.jsp"/>
	
	<% 
	String id = (String)session.getAttribute("member_mid");
	String member_pwd = (String)session.getAttribute("member_pwd");

	%>
	
	<header class="cs_func_page_header">
		<div class="cs_category">
			<p>구매하기</p>
			<p>결제하기</p>
			<p>구매정보</p>
		</div>
	</header>
	
	<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<h1 class="welcome-head">구매하기</h1>
					<hr class="section-hr">
				</div>
			</section>
			<section class="section-two">
				<form class="frm-member" id="frm_member" name="frm_member" action="" method="post">
					<div class="frm-label">
						<label>주문상품</label>
					</div>
					<div class="frm-input-id">
						<input style="font-weight:bold" type="text" name="frm-id" readonly="readonly" value="아보카도 중대과 175g 내외 10개입">
					</div>


					<div class="frm-label">
						<label>이름</label>
					</div>
					<div class="frm-input-name">
						<input style="font-weight:bold" type="text" name="frm-name" placeholder="성명을 입력해주세요." value="${userInfo.getMember_name() }">
					</div>
					
					<div class="frm-label">
						<label>전화번호</label>
					</div>
					<div class="frm-input-phone">
						<select name="phone_first">
							<option selected >010</option>
							<option>017</option>
						</select>
						<input style="font-weight:bold" type="text" name="frm-phone" placeholder="3333-3333" value="${userInfo.getMember_phone() }">
					</div>
					
					<div class="frm-label">
						<label>배송정보</label>
					</div>
					<div class="frm-input-zipcode">
						<input style="font-weight:bold" type="text" name="zipcode" placeholder="우편번호" value="${userInfo.getMember_zipcode() }">
						<input style="font-weight:bold" type="button" name="btnZipcode" id="btnFindZip" value="신규 배송지">
						<input style="font-weight:bold" type="text" name="address" placeholder="상세주소" value="${userInfo.getMember_address() }">
					</div>
						
					<div class="frm-label">
						<label>배송메세지</label>
					</div>
					<div class="frm-input-moving">
						<select>
						<option>배송메세지를 선택해 주세요.</option>
						<option>부재시 문 앞에 부탁드립니다.</option>
						<option>배송 전 연락바랍니다.</option>
						<option>경비실에 맡겨주세요.</option>
						<option>택배함에 놔주세요.</option>
						</select>
						<input type="button" name="frm_moving" value="선택">
						
					</div>
					
					<div class="frm-label">
						<label>할인쿠폰</label>
					</div>
					<div class="frm-input-cupon">
						<select>
						<option>FineApple 임직원 30% 할인</option>
						<option>FineApple 오픈 기념 10% 할인</option>
						</select>
						<input type="button" name="frm_sales" value="적용">
					</div>

					
					<hr class="section-hr">
					
					<div class= "finalPay_dis frm-label">
						<div style="font-size: 14px;">쿠폰 할인 금액
						<input style="font-weight:bold"  type="text" name="frm_final_dis" placeholder="성명을 입력해주세요." value="0원">
						</div>
					</div>
						
					<div class= "finalPay frm-label">
						<div>최종 결제 금액 
						<input style="font-weight:bold" type="text" name="frm_final_pay" placeholder="성명을 입력해주세요." value="0원">
						</div>
					</div>

					<div class="frm-submit">
						<input type="button" onclick="check_Pwd()" name="frm_submit" value="결제하기">
					</div>

				</form>
			</section>
		</div>
	
	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
	<script>
	member();
	</script>
</body>
</html>