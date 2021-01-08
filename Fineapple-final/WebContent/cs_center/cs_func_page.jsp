<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/cs_center.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/footer.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
   
<script src="https://code.jquery.com/jquery-3.5.1.js" 
        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
        crossorigin="anonymous"></script>
        
<script type="text/javascript" src="<%=request.getContextPath() %>/js/inquirybook.js"></script>
</head>

<body>
<!-- include 변수 설정 -->
<%
	request.setCharacterEncoding("utf-8");
	String func = "./cs_center/cs_board.jsp";
	if(request.getParameter("func") != null) {
		func = request.getParameter("func");
	}
%>


	<!-- header영역 -->

	<jsp:include page="../main/header.jsp"/>
	

<!-- 메인 페이지 플렉스 레이아웃 설정 -->
<div class="cs_func_page_container">
		<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">고객 센터</h1>
		<div class="cs_category">
			<a href="<%=request.getContextPath() %>/inquiry.do?job=select">Q&A게시판</a>
			<a href="<%=request.getContextPath() %>/faqbook.do?qa=selectFaq"">FAQ</a>
			<a href="<%=request.getContextPath() %>/cs_center/cs_func_page.jsp?func=cs_map.jsp">오시는 길</a>
		</div>
		</header>
	<section class="cs_func_page_content">
			
		
		
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
	</section>
</div>


<!-- footer 고정 광고 배너 -->


  <!-- footer영역 -->
<footer class="home_footer_container">
	<div class="footer_header"> 
		<p>* 보상 판매 프로그램은 FineApple의 파트너이자 독립적으로 운영되는 제3의 업체에
		의해 제공됩니다. FineApple 및 FineApple의 계열사는 고객과 파트너 간 계약의 당사자가 아닙니다. 보상 판매 금액은 보상
		판매되는 스마트폰의 상태 및 모델에 따라 달라집니다. 19세 이상이어야 합니다. 일부 매장에서는 본 프로그램을 이용할 수
		없으며, 일부 기기는 보상 판매 대상이 아닙니다. FineApple은 어떤 기기든 수령을 거부하거나, 그 수량을 제한할 권리를
		보유합니다. 새 FineApple 기기 구매 시, 현재 소유한 기기의 가치만큼 할인을 받을 수도 있습니다. 추가 약관은
		FineApple.com/kr/trade-in을 참고하십시오.</p>
	</div>
	
	<div class="footer_body">
		<div>
			<ul class="foot-main-list">
		    	<li>
		            <h4>제품 알아보기</h4>
		        </li>
		        <li><a href="#">휴대폰</a></li>
		        <li><a href="#">노트북</a></li>
		        <li><a href="#">태블릿PC</a></li>
		        <li><a href="#">스마트 워치</a></li>
		        <li><a href="#">악세서리</a></li>
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>소개</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/intro/intro.jsp">회사 소개</a></li>
		        <li><a href="<%=request.getContextPath() %>/intro/vision.jsp">회사 비전</a></li>
		        </br>
		        <li>
		            <h4>커뮤니티</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/notice/notice.jsp">공지사항</a></li>
		        <li><a href="<%=request.getContextPath() %>/event/event.jsp">이벤트</a></li>
		        <li><a href="<%=request.getContextPath() %>/review.do?job=select">리뷰 게시판</a></li>
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>고객 지원</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/inquiry.do?job=select">Q&A 게시판</a></li>
		        <li><a href="<%=request.getContextPath() %>/faqbook.do?qa=selectFaq">FAQ</a></li>
		        <li><a href="<%=request.getContextPath() %>/cs_center/cs_func_page.jsp?func=../cs_center/cs_map.jsp">오시는 길</a></li>
	   	   	    <li><a href="<%=request.getContextPath() %>/login/loginfo.jsp">로그인</a></li>
		        <li><a href="<%=request.getContextPath() %>/UsersJoin/agree.jsp">회원 가입</a></li>
		        <li><a href="<%=request.getContextPath() %>/login/findId.jsp">아이디 찾기</a></li>
		        <li><a href="<%=request.getContextPath() %>/login/findPw.jsp">비밀번호 찾기</a></li>
		        
		    </ul>
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>고객 정보</h4>
		        </li>
		        <li><a href="<%=request.getContextPath() %>/mypage/cart.jsp">장바구니</a></li>
		        <li><a href="<%=request.getContextPath() %>/mypage/orderlist.jsp">정보 수정</a></li>
		        <li><a href="<%=request.getContextPath() %>/mypage/coupon.jsp">주문 내역</a></li>
		        <li><a href="#">찜목록</a></li>
		        <li><a href="#">쿠폰함</a></li>
		    </ul>
		
		</div>
		<div>
		    <ul class="foot-main-list">
		        <li>
		            <h4>FINEAPPLE 정보</h4>
		        </li>
		        <li><a href="#">Newsroom</a></li>
		        <li><a href="#">FINEAPPLE 리더쉽</a></li>
		        <li><a href="#">채용 안내</a></li>
		        <li><a href="#">개인정보 보호</a></li>
		        <li><a href="#">협력업체에 대한 책임</a></li>
		    </ul>
		</div>
	</div>

	<div class="footer_footer">
		<div id="foot-bottom1">
			<p>다양한 쇼핑 방법: FineApple Store를 방문하거나, 리셀러를 찾아보거나, 010-41991479번으로 전화하세요.</p>
		</div>
		<div id="foot-bottom2">
			<p>사업자등록번호 : 123-45-67890 | 통신판매업신고번호 : 제 2011-서울강남-00810호 | 대표이사 : 정희석 | 주소 : 서울 특별시 강남구 영동대로 517 | 대표전화 : 010-4199-1479 | 팩스 : 02-2060-1479</p>
		</div>
	</div>

</footer>

<!-- 스크립트 -->
<script>
inquiry()
</script>
</body>
</html>