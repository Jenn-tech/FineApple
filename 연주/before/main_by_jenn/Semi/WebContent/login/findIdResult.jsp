<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
 request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
     String phone = request.getParameter("phone");
     
MemberDao dao = new MemberDao();
 String mid = dao.findId(name, phone); //아이디를 디비에서 가져옴..실패시 널
 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../css/findinfo.css">

</head>
<body>
<header id="header">
		<nav class="left">
            <div class="search_bar">
                 <form role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="" name="s" />
                    <button type="submit" class="search-submit">검색</button>
                 </form>
            </div>
        </nav>
        <a href ="../index.jsp"><img src="../images/pineapple.png"/></a>
		<nav class="right">
            <a href="#" class="button alt">소개</a>
			<a href="#" class="button alt">커뮤니티</a>
			<a href="#" class="button alt">고객지원</a>
            <a href="#" class="button alt">마이페이지</a>                
            <a href="#" class="button alt">로그인</a>                
        </nav>  
	</header>
  <form name="idsearch" method="post">
      <%
       if (mid != null) {
      %>
      
      <div class = "container">
      	<div class = "found">
	      <h4>  회원님의 아이디는 </h4>  
	      <div class ="found-id"><%=mid%></div>
	      <h4>  입니다 </h4>
	     </div>
	     <div class = "found-login">
 		    <input type="button" id="btnLogin" value="로그인" />
       	</div>
       </div>
      <%
  } else {
 %>
        <div>* 아이디 찾기를 실패하셨습니다. *</div>
       <input type="button" value="돌아가기"
         onClick="history.back()">
        <div><%=mid%></div>
       <%
  }
 %> 
      </form>
     
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
</body>
</html>