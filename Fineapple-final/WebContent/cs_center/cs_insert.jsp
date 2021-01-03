<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/board.js"></script>
</head>
<body>
<div class="cs_insert_body">
	<header class="cs_insert_title">
	<h1 style="font-size: 2em;">Q&A</h1>
	</br>
	<h2 style="font-weight: bold">궁금하신 점을 지금 바로 물어보세요!</h2>
	</header>
	
	<div class="cs_insert_notice">
		<ul style="list-style-type: disc;">
			<li>제품 사용, 오염, 전용 박스 손상, 라벨 제거, 사은품 및 부속 사용/분실 시, 교환/환불이 불가능합니다.</li>
			<li>교환을 원하시는 상품의 재고가 부족 시, 교환이 불가능합니다.</li>
			<li>반품 시 택배를 통해서 진행하시거나 매장을 방문해주세요.</li>
			<li>고객님의 주문 내역을 선택, 질문이 필요한 상품을 선택하시면 1:1 상담이 가능합니다.</li>
			<li>주문 취소/교환/환물은 <a>마이페이지 > 주문 내역</a>에서 신청하실 수 있습니다.</li>
			<li>1:1 문의 처리 내역은 <a>마이페이지 > 1:1문의</a>를 통해 확인하실 수 있습니다.</li>
			<li>상품 정보 관련 문의는 해당 상품 문의에 남기셔야 빠른 답변이 가능합니다.</li>
		</ul>
	</div>
		
	<form action="../inquiry.do" method="post" name="cs_frm_board" id="frm_question">
		<div class="cs_insert_frm_container">
		    <div class="cs_insert_frm_body">
		    	<div>
				    <label for="inquiryType">문의 유형</label>
				    <select name="inquiryType" id="inquiryType" aria-placeholder="문의 유형" size="1" style="width: 75%; height: 30px; border: 1px solid #f1f1f1;" >
				        <option>문의 유형</option>
				        <option value="refund">환불</option>
				        <option value="cancel">취소(출하 전 취소)</option>
				        <option value="delivery">배송</option>
				        <option value="AS">불량/AS</option>
				        <option value="order">주문/결제</option>
				        <option value="product">상품/재입고</option>
				        <option value="accumlatedMoney">적립금</option>
				        <option value="membership">회원 관련</option>
				        <option value="etc">기타 문의</option>
				        <option value="report">신고</option>
				    </select>
				</div>
		
				 <div>
				    <label for="ordernum">주문 번호</label>
				    <input type="number" id="cs_ordernum" placeholder="주문 번호를 입력하세요." size="25" name="ordernum" style="width: 66%; height: 30px" />
				    <input type="button" id="cs_orderNumSearch" value="검색" style="height: 30px; width: 53px;">
				</div>
				
				<div>
		   			<label for="name">작성자</label>
		  		 	<input type="text" placeholder="이름을 입력해주세요." name="name" id="cs_name" size="25" style="width: 75%; height: 30px"/>	
				</div>
		
				<div>
				    <label for="pwd">비밀번호</label>
				    <input type="password" placeholder="비밀번호를 입력해주세요." id="cs_pwd" size="25" name="pwd" style="width: 75%; height: 30px"/>
				</div>
				<label>사진</label>	
				<div class="cs_attach_box">
						
				</div>
	  		</div>
	  		<div class="cs_insert_frm_body">
		  		<div style="margin-bottom: 10px;">
					<label for="subject" style="display:inline-block; width: 10%;">제목</label>
					<input type="text" name="subject" id="cs_subject" placeholder="제목을 입력해주세요." style="width: 89%; height: 30px;">
				</div>
	  			<div class="cs_insert_doc">
	  				<label for="doc" style="display:inline-block; width: 10%;">본문</label>
	  				<textarea name="doc" id="cs_doc" rows="17" style="width: 89%; border: 1px solid #f1f1f1"></textarea>
	  			</div>
	  		</div>
		</div>
		<div class="cs_center_insert_send_box">
			       <label for="secretcheck">비밀글</label>
			       <input type="checkbox" name="secretcheck" id="cs_check" value="secret">
			       <input type="button" value="전송" id="cs_insert_btnSave" class="cs_insert_btnSave">
			       <input type="button" value="취소" id="cs_insert_btnCancel" class="cs_insert_btnCancel">
		</div>
		<input type="number" value="10" name="hit" id="hit">
		<input type="text" name="nowPage" value="${param.nowPage}">
		<input type="text" name="findStr" value="${param.findStr}">
		<input type="hidden" name="job" />
	</form>
</div>

<script type="text/javascript">
fileUpload('cs_attach_box')
</script>
</body>
</html>