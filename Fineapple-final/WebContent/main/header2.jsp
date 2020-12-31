<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <script src='../js/login.js'></script>
    
<header id="header">
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
          <div class = "menubar">
	            <li>
	            	<a href="../intro/intro.jsp" class="button alt">소개</a>
	            	<ul>
	            		<a href="../intro/intro.jsp" >회사소개</a>
	            		<a href="../intro/vision.jsp" >회사비전</a>
	            		<a href="../cs/cs_func_page.jsp?func=../cs_center/cs_map.jsp" >오시는길</a>
	            	</ul>
	            </li>
	            <li>
	            	<a href="../notice/notice.jsp" class="button alt">커뮤니티</a>
	            	<ul>
	            		<a href="../notice/notice.jsp" >공지사항</a>
	            		<a href="../event/event.jsp" >이벤트</a>
	            		<a href="../review3/review.jsp" >리뷰 게시판</a>
	            	</ul>
	            </li>
	            <li>
	       			    <a href="../cs/cs_home.jsp" class="button alt">고객지원</a>
	            	<ul>
	            		<a href="../cs/cs_func_page.jsp?func=../cs_center/cs_board.jsp" >QnA게시판  </a>
	            		<a href="../cs/cs_func_page.jsp?func=../cs_center/cs_FAQ.jsp" >FAQ</a>
	            	</ul>
	            </li>
	            <li>
	            	<a href="../mypage/mypage.jsp" class="button alt">마이룸</a>
	            	<ul>
	            		<a href="../mypage/cart.jsp" >장바구니</a>
	            		<a href="../mypage/orderlist.jsp" >주문내역</a>
	            		<a href="../mypage/coupon.jsp" >쿠폰함</a>
	            	</ul>
	            </li>            
	            <li><input type='button' id='btnLogout' value='로그아웃' /></li>                
        	</div>               
		
        </nav>  
	</header>
	<script>logInOut()</script>