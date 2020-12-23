<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" type="text/css" href="../css/cs_center.css">
<link rel="stylesheet" type="text/css" href="../css/indexstyle.css">
<link rel="stylesheet" type="text/css" href="../css/login.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/header2.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>

<body>
  <header id="header">
		<nav class="left">
            <div class="search_bar">
                 <form role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
                    <button type="submit" class="search-submit">검색</button>
                 </form>
            </div>
        </nav>
        <img src="../images/pineapple.png"/>
		<nav class="right">
            <a href="#" class="button alt">소개</a>
			<a href="#" class="button alt">커뮤니티</a>
			<a href="#" class="button alt">고객지원</a>
            <a href="#" class="button alt">마이페이지</a>                
            <a href="/login/login.html" class="button alt">로그인</a>                
        </nav>  
    </header>
    <div class="QA-container">
        <div class="QA-header">
            <h1>cs center</h1>
        </div>
        <div class="QA-bar">
            <ul >
                <li id="bar1" style="width: 30%; border-right: 1px solid gray;">
                    <a href="">
                        1:1 Q&A
                        <br/>
                        질문 전 FAQ(자주 묻는 질문)을 먼저 확인해주세요. 
                    </a>
                </li>
                <li id="bar2" style="width: 20%; border-right: 1px solid gray;">
                    <a href="">
                        FAQ
                        <br/>
                        자주 묻는 질문
                    </a>
                </li>
                <li id="bar3" style="width: 30%; border-right: 1px solid gray;">
                    <a href="">
                        게시판
                        <br/>
                        다른 사람의 문의글도 확인해보세요!
                    </a>
                </li>
                <li id="bar4" style="width: 19%; border-right: 1px solid gray;">
                    <a href="">
                        매장 오시는 길
                        <br/>
                        TEL. 1544-1544
                    </a>
                </li>
            </ul>
        </div>
        <div>
            <ul id="QA_notice">
                <li>고객님의 주문 내역 중 선택, 질문이 필요한 상품을 선택하시면 1:1 상담이 가능합니다.</li>
                <li>주문취소/교환/환불은 마이페이지 > 주무내역에서 신청하실 수 있습니다.</li>
                <li>1:1 문의 처리 내역은 마이페이지 > 1:1 문의를 통해 확인하실 수 있습니다.</li>
            </ul>
        </div>
        <div class="QA-article">
            <form action="">
                <label for="questionCategory">문의 유형</label>
                <select name="items" id="questionCategory" aria-placeholder="문의 유형" size="1">
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
                <label for="orderNumber">주문 번호</label>
                <input type="text" id="orderNumber" placeholder="주문 번호를 입력하세요.">
                <input type="button" id="orderNumSearch" value="검색">
                <label for="pwd">비밀 번호</label>
                <input type="password" placeholder="비밀번호를 입력해주세요." id="pwd">
                <label for="autor">작성자</label>
                <input type="text" placeholder="이름을 입력해주세요.">
                <br/>
                <textarea name="doc" id="" cols="80" rows="5" class="doc"></textarea>
                <br/>
                <label for="check">비밀글</label>
                <input type="checkbox" name="check" id="check">
                <input type="button" value="전송" id="btnPost">
                <input type="button" value="취소" id="btnCancel">
            </form>

        </div>
    </div>

        <footer class="footer-list">
        <div class="ul-align">
            <ul class="list-box">
                <li>사업자등록번호 : 120-81-84429 | 통신판매업신고번호 : 제 2011-서울강남-00810호</li>
                <li>대표이사 : PETER DENWOOD | 주소 : 서울 특별시 강남구 영동대로 517</li>
                <li>대표전화 : 080-330-8877 | 팩스 : 02-6928-0000</li>
                <li>Apple 온라인 스토어는 업계 표준 암호화를 사용하여 제출된 고객 비밀 정보를 보호합니다. <a href="#">보안 정보</a>에 대해 더 알아보기.</li>
                <hr class="list-box-hr">
            </ul>
            <ul class="list-box">
                <li>다양한 쇼핑 방법: Apple Store를 방문하거나, 리셀러를 찾아보거나, 080-330-8877번으로 전화하세요.</li>
                <li>Copyright © 2020 Apple Inc. 모든 권리 보유.</li>
            </ul>
        </div>
    </footer>
</div>
<script>
	
</script>
</body>
</html>
