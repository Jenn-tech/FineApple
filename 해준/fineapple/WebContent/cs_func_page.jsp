<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" type="text/css" href="./css/cs_center.css">
<link rel="stylesheet" type="text/css" href="./css/indexstyle.css">
<link rel="stylesheet" type="text/css" href="./css/login.css">
<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
   
<script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script>
        
<script type="text/javascript" src="./js/inquirybook.js"></script>
</head>

<body>
<!-- include 변수 설정 -->
<%
	request.setCharacterEncoding("utf-8");
	String func = "./cs_center/cs_insert.jsp";
	if(request.getParameter("func") != null) {
		func = request.getParameter("func");
	}
%>


<!--고정 상단바  -->
<header id="header">
	<nav class="left">
		<div class="search_bar">
		     <form role="search" method="get" class="search-form" >
		         <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
		        <button type="submit" class="search-submit">검색</button>
		     </form>
		</div>
	</nav>

	<img src="./images/pineapple.png"/>
	
	<nav class="right">
	    <a href="#" class="button alt">소개</a>
		<a href="#" class="button alt">커뮤니티</a>
		<a href="#" class="button alt">고객지원</a>
	    <a href="#" class="button alt">마이페이지</a>                
	    <a href="/login/login.html" class="button alt">로그인</a>                
	</nav>  
</header>


<!-- 메인 페이지 플렉스 레이아웃 설정 -->
<div class="cs_func_page_container">
	<header class="cs_func_page_title">
		<div class="cs_func_page_title_item">
		<h2>CS CENTER</h2>
		</div>
		<div class="cs_func_page_title_item">
		<a href="notice.do?notice=select">
		<h4>공지사항</h4>
		<p>FINEAPPLE에서 전하는 새로운 소식을 확인해주세요.</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=./cs_center/cs_insert.jsp">
		<h4>Q&A</h4>
		<p>질문 전 FAQ를 먼저 확인해주세요.</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=./cs_center/cs_FAQ.jsp">
		<h4>FAQ</h4>
		<p>자주 묻는 질문</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="inquiry.do?qa=select">
		<h4>게시판</h4>
		<p>다른 고객님의 질문 사항을 확인해주세요.</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=./cs_center/cs_map.jsp">
		<h4>찾아오시는 길</h4>
		<p>제품을 눈으로 확인하고 구매하세요.</p>
		</a>
		</div>
	</header>
	<section class="cs_func_page_content">
		<nav>
			<div class="cs_func_page_quickmenu">
			<h3>QUICK MENU</h3>
			</div>
			<ul class="cs_func_page_quickmenu_ul">
				<li>
					<a href="#">제품</a>
					<ul>
						<li><a href="">핸드폰</a></li>
						<li><a href="">태블릿</a></li>
						<li><a href="">노트북</a></li>
						<li><a href="">스마트워치</a></li>
						<li><a href="">엑세서리</a></li>
					</ul>
				</li>
				<li>
					<a href="#">마이페이지</a>
					<ul>
						<li><a href="">고객정보수정</a></li>
						<li><a href="">장바구니</a></li>
						<li><a href="">찜목록</a></li>
						<li><a href="">쿠폰함</a></li>
						<li><a href="">문의 내역</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		
		<!-- 실질적으로 변경되는 공간 -->
		<main class="cs_func_page_inquiry">
		<jsp:include page="<%=func%>"></jsp:include>
		</main>
		
		<aside class="cs_func_page_sidebanner">
			<div class="cs_func_page_sidenotice">
				
			</div>
		</aside>
	</section>
</div>


<!-- footer 고정 광고 배너 -->
<div class="cs_home_footer">
		<img alt="" src="./images/adv.png" style="width: 100%; height: 100%; display: block; margin: 50px 0 -50px  0;"/>
</div>	


<!-- 고정 footer -->
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


<!-- 스크립트 -->
<script>
question()
initmenu()
</script>
</body>
</html>