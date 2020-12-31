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
   	<%@include file="../main/footer.jsp" %>


<!-- 스크립트 -->
<script>
question()
toggleMenu()
</script>
</body>
</html>