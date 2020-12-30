<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" type="text/css" href="../css/cs_center.css">
<link rel="stylesheet" type="text/css" href="../css/header.css">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
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
	String func = "../cs_center/cs_insert.jsp";
	if(request.getParameter("func") != null) {
		func = request.getParameter("func");
	}
%>


	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면 %>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %> 


<!-- 메인 페이지 플렉스 레이아웃 설정 -->
<div class="cs_func_page_container">
	<header class="cs_func_page_title">
		<div class="cs_func_page_title_item">
		<h3>CS CENTER</h3>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=../cs_center/cs_insert.jsp">
		<h4>Q&A</h4>
		<p>질문 전 FAQ를 먼저 확인해주세요.</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=../cs_center/cs_FAQ.jsp">
		<h4>FAQ</h4>
		<p>자주 묻는 질문</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=../cs_center/cs_board.jsp">
		<h4>게시판</h4>
		<p>다른 고객님의 질문 사항을 확인해주세요.</p>
		</a>
		</div>
		<div class="cs_func_page_title_item">
		<a href="cs_func_page.jsp?func=../cs_center/cs_map.jsp">
		<h4>찾아오시는 길</h4>
		<p>제품을 눈으로 확인하고 구매하세요.</p>
		</a>
		</div>
	</header>
	<section class="cs_func_page_content">
		<nav>
			<div class="cs_func_page_nav_menu_fixed">
				<div class="cs_func_page_nav_title">
				<h3>QUICK MENU</h3>
				</div>
				<ul class="cs_func_page_menu">
					<li class="cs_toggle_menu">
						<a href="#">제품</a>
						<ul class="cs_toggle_func">
							<li><a href="">핸드폰</a></li>
							<li><a href="">태블릿</a></li>
							<li><a href="">노트북</a></li>
							<li><a href="">스마트워치</a></li>
							<li><a href="">엑세서리</a></li>
						</ul>
					</li>
					<li class="cs_toggle_menu">
						<a href="#">커뮤니티</a>
						<ul class="cs_toggle_func">
							<li><a href="">공지사항</a></li>
							<li><a href="">이벤트</a></li>
							<li><a href="">후기</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		
		<!-- 실질적으로 변경되는 공간 -->
		<main class="cs_func_page_inquiry">
			<jsp:include page="<%=func%>"></jsp:include>
			<div class="cs_func_footer_imfo">
				<div class="cs_func_QA_item">
					<h4>FINEEAPPLE 고객 센터</h4>
					</br>
					<h3>010-4199-1479</h3>
					</br>
					<span>
					오전 09:00 ~ 오후 18:00 (토,일 공휴일 휴무)</br>
					점심 시간: 12:00 ~ 13:00
					</span>
				</div>
				<div class="cs_func_QA_item">
					<h4>FINEEAPPLE 입금 계좌</h4>
					</br>
					<h3>110-394-590843</h3>
					</br>
					<span>
					신한 은행
					예금주: 정해준
					</span>					
				</div>
			</div>
		</main>
		
		<aside class="cs_func_page_sidebanner">
			<div class="cs_func_page_sidenotice">
				<img alt="" src="../images/aside.jpg">
				<img alt="" src="../images/left_fold2.jpg" style="margin-top: 5px;">
			</div>
		</aside>
	</section>
</div>


<!-- footer 고정 광고 배너 -->


  <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>


<!-- 스크립트 -->
<script>
question()
toggleMenu()
</script>
</body>
</html>