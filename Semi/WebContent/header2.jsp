<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script src='./js/login.js'></script>
    
<header id="header">
		<nav class="left">
            <div class="search_bar">
                 <form role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
                    <button type="submit" class="search-submit">검색</button>
                 </form>
            </div>
        </nav>
        <a href ="index.jsp"><img src="./images/pineapple.png"/></a>
		<nav class="right">
            <a href="#" class="button alt">소개</a>
			<a href="#" class="button alt">커뮤니티</a>
			<a href="#" class="button alt">고객지원</a>
            <a href="#" class="button alt">마이페이지</a>                
		<input type='button' id='btnLogout' value='로그아웃' />
        </nav>  
	</header>
	<script>logInOut()</script>