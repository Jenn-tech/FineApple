
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
<link rel="stylesheet" href="../css/purchase/purchase.css">
<link rel="stylesheet" href="../css/UsersJoin/agree.css">
<link rel="stylesheet" href="../css/indexstyle.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>
<script src="../js/userjoin/mypage.js"></script>
<script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>  

<style>
.div-container {
	width: 800px;
	margin: 100px auto 0 auto;
	border: 1px solid #d2d6dc;
	box-shadow: 0px 0px 10px 10px white;
	background-color: white;
	height: 1900px;
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
			<p>결제완료</p>
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
				<form class="frm-member" onsubmit="check();" id="frm_member" name="frm_member" action="" method="post">
					<div class="frm-label">
						<label>주문상품</label>
					</div>
					<div class="frm-input-id">
						<input style="font-weight:bold" type="text" name="frm_id" readonly="readonly" value="MacBook Air 13인치">
					</div>
					
					<div class="frm-label">
						<label>주문번호</label>
					</div>
					<div class="frm-input-id">
						<input style="font-weight:bold" type="text" name="frm_num" readonly="readonly" value="20210109FIANAPPLECODE">
					</div>


					<div class="frm-label">
						<label>이름</label>
					</div>
					<div class="frm-input-name">
						<input style="font-weight:bold" type="text" name="frm_name" placeholder="${vo.getMember_mid() }">
					</div>
					
					<div class="frm-label">
						<label>전화번호</label>
					</div>
					<div class="frm-input-phone">
						<select name="phone_first">
							<option selected >010</option>
							<option>017</option>
						</select>
						<input style="font-weight:bold" type="text" name="frm_phone" id="phoneNum" maxlength="9" value="${vo.getMember_phone() }" placeholder="0000-0000">
					</div>
					
					<div class="frm-label">
						<label>배송정보</label>
					</div>
					<div class="frm-input-zipcode">
						<input style="font-weight:bold" type="text" name="zipcode" placeholder="우편번호" value="${vo.getMember_zipcode() }">
						<input style="font-weight:bold" type="button" name="btnZipcode" id="btnFindZip" value="신규 배송지">
						<input style="font-weight:bold" type="text" name="address" placeholder="상세주소" value="${vo.getMember_address() }">
					</div>
						
					<div class="frm-label">
						<label>배송메세지</label>
					</div>
					
					<div class="frm-input-moving">
						<select name="btn_select">
						<option>부재시 문 앞에 부탁드립니다.</option>
						<option>배송 전 연락바랍니다.</option>
						<option>경비실에 맡겨주세요.</option>
						<option>택배함에 놔주세요.</option>
						</select>
						
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
					
					<hr class="section-hr-two">
					
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
					
					<div class= "finalPay_idea frm-label">
						<div>결제 수단 선택</div>
							
							<div class="pay_align">
								<div class="pay_img">
								<label for="pay_bisa"><img src="../images/UsersJoin/visa.png"></label>
								<input type="radio" name="myradio" id="pay_bisa">
								</div>
								
								<div class="pay_img">
								<label for="pay_bank"><img src="../images/UsersJoin/bank.png"></label>
								<input type="radio" name="myradio" id="pay_bank">
								</div>
								
							</div>
					</div>
					<div class="frm-submit">
						<input type="submit" id="frm_submit" name="frm_submit" value="결제하기">
					</div>
					
					<div class="frm-kakao">
						<div class="kakao_img">
						<button type="button" id="frm_kakao" onclick="location.href='/Fineapple-final/purchase/paying_kakao.jsp'"><img src="../images/UsersJoin/kakao.png"><span>KaKao Pay로 결제하기</span></button>
						</div>
					</div>
					
					
				</form>
			</section>
		</div>

	<!-- footer영역 -->
	<%@include file="../main/footer.jsp"%>
	<script>
	member();
	phoneHypen();
	</script>
</body>
</html>