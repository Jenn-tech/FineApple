<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
    <script src='../js/login.js'></script>
    
</head>
<body>
		<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/main/header2.jsp"/>
	
	<%} %>
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
                    <a href="../UsersJoin/agree.jsp">회원가입</a>
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
        <   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
    </div>
    <script>logInOut()</script>
    
</body>
</html>