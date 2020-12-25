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
<script type="text/javascript" src="../js/questionbook.js"></script>	        
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	String inc = "input_question.jsp";
	if(request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}
%>

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
    <div class="QA_container">
        <div class="QA_header">
            <h1>cs center</h1>
        </div>
         <div class="QA_bar">
            <ul >
                <li id="bar1" style="width: 30%; border-right: 1px solid gray;">
                    <a href="insert.jsp?inc=input_question.jsp">
                       <p>1:1 Q&A</p>
                       <p>질문 전 FAQ(자주 묻는 질문)을 먼저 확인해주세요.</p> 
                    </a>
    	           	 </li><!-- 
 					--><li id="bar2" style="width: 20%; border-right: 1px solid gray;">
                    <a href="insert.jsp?inc=FAQ.jsp">
                       <p>FAQ</p>
                       <p>자주 묻는 질문</p> 
                    </a>
	                </li><!-- 
    	            --><li id="bar3" style="width: 30%; border-right: 1px solid gray;">
                    <a href="insert.jsp?inc=ajax3.jsp">
                       <p>게시판</p>
                       <p>다른 사람의 문의글도 확인해보세요!</p> 
                    </a>
                	</li><!-- 
            	   --><li id="bar4" style="width: 20%; border-right: 1px solid gray;">
                    <a href="quest_answer.jsp?inc=ajax2.jsp">
                       <p>매장 오시는 길</p>
                       <p>TEL. 1544-1544</p>
                    </a>
                </li><!-- 
         --></ul>
        </div>
    </div>
    <div class="cs_center_body">
	<div class="cs_center_side_bar">
		<ul>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
			<li>아무말 </li>
		</ul>
	</div>
	<div class="cs_center_main">	
    	<jsp:include page="<%=inc%>"></jsp:include>
    </div>
    </div>
    
    
    <div class="footer_banner">
		<img alt="" src="../images/adv.png" style=""/>
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
question()
</script>
</body>
</html>
