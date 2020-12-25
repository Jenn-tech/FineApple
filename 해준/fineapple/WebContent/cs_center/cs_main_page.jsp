<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 1:1 Q&A</title>
</head>

<body>
	<div class="cs_insert_container">
		<header class="cs_insert_title">
			<h2>CS_CENTER</h2>		
		</header>
		<section class="cs_insert_content">
			<nav>
				<h3>Quick menu</h3>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
				<ul>
					<h4>마이페이지</h4>
					<li><a>고객 정보 수정</a></li>
					<li><a>장바구니</a></li>
					<li><a>찜목록</a></li>
					<li><a>쿠폰함</a></li>
					<li><a>문의 내역</a></li>
				</ul>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
			</nav>
		
			<main class="cs_insert_inquiry">
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
			</main>
			<aside class="cs_insert_sidebanner">
			</aside>
		</section>
	</div>
</body>
</html>