<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
</head>
	<div class="QA_body">
		<h3>1:1 Q&A</h3>
	       <div>
	           <ul class="QA_notice">
	               <li>고객님의 주문 내역 중 선택, 질문이 필요한 상품을 선택하시면 1:1 상담이 가능합니다.</li>
	               <li>주문취소/교환/환불은 마이페이지 > 주문내역에서 신청하실 수 있습니다.</li>
	               <li>1:1 문의 처리 내역은 마이페이지 > 1:1 문의를 통해 확인하실 수 있습니다.</li>
	           </ul>
	       </div>
	       <div class="QA_article">
	           <form action="" method="post" name="frm_question" id="frm_question">
	               <div>
	                <label for="questionCategory">문의 유형</label>
	                <select name="inquiryType" id="questionCategory" aria-placeholder="문의 유형" size="1" >
	                    <option value="">문의 유형</option>
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
	                <label for="orderNumber">주문 번호</label>
	                <input type="text" id="orderNumber" placeholder="주문 번호를 입력하세요." size="25" name="ordernum"/>
	                <input type="button" id="orderNumSearch" value="검색">
	               </div>
	               <div>
	                <label for="pwd">비밀 번호</label>
	                <input type="password" placeholder="비밀번호를 입력해주세요." id="pwd" size="25" name="pwd"/>
	               </div>
	               <div>
	                <label for="name">작성자</label>
	                <input type="text" placeholder="이름을 입력해주세요." name="name" id="name" size="25"/>
	               </div>
	               <input type="file" name="photo" id="btnPhoto"/>
	               <img alt="" src="http://placehold.it/200x140" id="photo" style="width: 200px; height: 140px;">
	               <br/>
	               <input type="text" size="100" name="title" id="title">
	               	<textarea name="doc" id="doc" cols="80" rows="10" style="width: 100%" style="text-indent: 1em;"></textarea>
	               <br/>
	               <div class="send_box">
	                <label for="check">비밀글</label>
	                <input type="checkbox" name="secretcheck" id="check" value="secret">
	                <input type="button" value="전송" id="btnInsert">
	                <input type="button" value="취소" id="btnCancel">
	               </div>
	      			<input type="hidden" value="813" name="midnum" id="midnum">
	           </form>
	       </div>
	</div>
</body>
</html>