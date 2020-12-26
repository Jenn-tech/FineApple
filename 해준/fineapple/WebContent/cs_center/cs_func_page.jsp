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
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
   
<script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script>
        
<script type="text/javascript" src="../js/inquirybook.js"></script>
</head>

<body>
<!-- include 변수 설정 -->
<%
	request.setCharacterEncoding("utf-8");
	String func = "cs_insert.jsp";
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

	<img src="../images/pineapple.png"/>
	
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
		<h2>CS_CENTER</h2>		
	</header>
	<section class="cs_func_page_content">
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
		
		<!-- 실질적으로 변경되는 공간 -->
		<main class="cs_func_page_inquiry">
		<jsp:include page="<%=func%>"></jsp:include>
		</main>
		
		<aside class="cs_func_page_sidebanner">
		</aside>
	</section>
</div>


<!-- footer 고정 광고 배너 -->
<div class="cs_home_footer">
		<img alt="" src="../images/adv.png" style="width: 100%; height: 100%; display: block; margin: 50px 0 -50px  0;"/>
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
</script>
</body>
</html>