<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/header.css">
    
<link rel="stylesheet" href="../css/indexstyle.css">
    <script src='../js/login.js'></script>
    
</head>
<body>
  <!--  	<header id="header">
		<nav class="left">
            <div class="search_bar">
                 <form role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
                    <button type="submit" class="search-submit">검색</button>
                 </form>
            </div>
        </nav>
        <a href ="../main/index.jsp"><img src="../images/pineapple.png"/></a>
		<nav class="right">
            <a href="#" class="button alt">소개</a>
			<a href="#" class="button alt">커뮤니티</a>
			<a href="#" class="button alt">고객지원</a>
            <a href="#" class="button alt">마이페이지</a>                
            <a href="#" class="button alt">로그인</a>                
        </nav>  
	</header>
 -->
 
	<jsp:include page="/main/header1.jsp"/>
	

    <div class="container">
        <section class="form-write">
			<form name='form_log' method='post'>
                <div class="align">
                    <input type="text" id="mid" name = "mid" placeholder="FineApple ID">
                     <div class="text-id">
                       
                    </div> 
                    <label></label>
                    <input type="password" id="pwd" name = "pwd" placeholder="암호">
                   <div class="text-id">
                        
                    </div> 
                    <input type="submit" id="btnLogin" value="로그인">
                </div>
            </form>
            <section class="login-search">
                <div class="login-id">
                    <a href="./findId.jsp">아이디찾기</a>
                </div>
                <div class="login-pw">
                    <a href="./findPw.jsp">비밀번호 찾기</a>
                </div>
                <div class="login-join">
                    <a href="../UsersJoin/index.jsp">회원가입</a>
                </div>
            </section>
            <div class="item-center">
                <div class="flex-1"></div>
                <span>OR</span>
                <div class="flex-1"></div>
            </div>
        </section>
        
        
        <section class="login-write">
            <div class="button-login">
                <button class="btn-kakao">
                    <a href="#"> KAKAO 로그인</a>
                   
                </button>
            </div>
            <div class="button-login">
                <button class="btn-naver" >
                    <a href="#">NAVER 로그인</a>
                </button>
            </div>
        </section>
    </div>
    <div class="footer-align">
        <hr>
        <div class="help-box">도움이 더 필요하신가요? <a href="#">지금 채팅하기</a> 또는 080-330-8877 번호로 문의하세요.</div>
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
    <script>logInOut()</script>
    
</body>
</html>