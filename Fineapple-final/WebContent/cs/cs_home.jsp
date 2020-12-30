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
</head>

<body>
	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면 %>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %> 


<!-- 고객센터 시작 페이지 -->
<div class="cs_home_container">
	<header class="cs_home_title">
		<h2 style="font-weight: bold; margin-top: 60px; font-size: 3em;">FINEAPPLE CUSTOMER CENTER</h2>
			<form action="">
			       <div class="cs_home_search">
			       <input type="text" placeholder="문제를 설명해주세요!" id="cs_home_search_box">
			       <input type="hidden" value="검색" id="cs_home_submit_box">
			       </div>
			</form>
	</header>
	<section class="cs_home_content">
		<main class="cs_home_content_menu">
		    <ul>
				<li><a href="cs_func_page.jsp"><img alt="" src="../images/QA.png">Q&A</a></li>
				<li><a href="cs_func_page.jsp?func=../cs_center/cs_FAQ.jsp"><img alt=""src="../images/FAQ.png">FAQ</a></li>
	       		<li><a href="cs_func_page.jsp?func=../cs_center/cs_board.jsp"><img alt="" src="../images/Map.png">게시판</a></li>
	       		<li><a href="cs_func_page.jsp?func=../cs_center/cs_map.jsp"><img alt=""src="../images/Map.png">찾아오시는 길</a></li>
	    	</ul>
		</main>
	</section>
</div>


<!-- footer 고정 광고 배너 -->
<div class="cs_home_footer">
		<img alt="" src="../images/adv.png" style="width: 100%; height: 100%; display: block; margin: 50px 0 -50px  0;"/>
</div>	


<!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>


<!-- 스크립트 -->
<script>
</script>
</body>
</html>
