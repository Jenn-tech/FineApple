<%@page import="review.ReviewDao"%>
<%@page import="review.ReviewVo"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Review</title>
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/review3.css"> 
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>

<body>
<%
	int reviewSerial = 0;
	if (request.getParameter("reviewSerial") != null){
		reviewSerial = Integer.parseInt(request.getParameter("reviewSerial"));
	}
	if (reviewSerial == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 게시물입니다.')");
		script.println("location.href = 'review.jsp'");
		script.println("</script>");
	}
	ReviewVo rv = new ReviewDao().getReview(reviewSerial);
%>
<div id="review">
    <header>
        <div id="search">
            <input id="search-product" type="text"size="15" placeholder="상품명"/>
            <input id="search-btn" type="submit" value="검색"/>
        </div>
        <div id="img_container">
            <!--<img src="https://t1.daumcdn.net/cfile/tistory/1705C6384DE6EB7433" width="95px"/>> -->
            <img src="img/pineapple.png" width="220px"/>
            
        </div>
        <ul id="nav">
            <li><a href="#">소개</a></li>
            <li><a href="#">서비스</a></li>
            <li><a href="./review.jsp">커뮤니티</a></li>
            <li><a href="#">고객지원</a></li>
            <li><a href="#">로그인</a></li>
        </ul>
    </header> 
 	<div class="container" style="width: 100%; min-height: 300px;">
 		<div class="row">
 		<form action="writeAction.jsp" method="post">
	 			<table class="review-table" style="text-align: center;"> 
	 				<thead>
	 					<tr>
	 						<th colspan="3" style="bakcground-color: #eeeeee; text-align: center;">리뷰글 보기</th>
	 					</tr>
	 				</thead>
	 				<tbody>
	 					<tr>
	 						<td style="width: 20%;">글제목</td>
	 						<td colspan="2"><%= rv.getReviewTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	 					</tr>
	 					<tr>
	 						<td >작성자</td>
	 						<td colspan="2"><%= rv.getReviewDate() %></td>
	 					</tr>
	 					<tr>
	 						<td >작성일자</td>
	 						<td colspan="2"><%= rv.getReviewDate()%></td>
	 					</tr>
	 					<tr>
	 						<td >내용</td>
	 						<td colspan="2" style="min-height: 200px; text-align: left''"><%= rv.getReviewDoc().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></td>
	 					</tr>
	 				</tbody>
	 			</table>
	 			<a href="review.jsp">목록</a>
	 			<a href="update.jsp?reviewSerial=<%= rv.getReviewSerial()%>" > 수정 </a>
	 			<a href="deleteAction.jsp?reviewSerial=<%= rv.getReviewSerial()%>" > 삭제 </a>
	 			<%--
	 				if(memberId != null && memberId.equals(rv.getMemberId())){
	 					<a href="update.jsp?memberId=<% memberId%>" > 수정 </a>
	 					<a href="deleteAction.jsp?memberId=<% memberId%>" > 삭제 </a>
	 				}
	 			
	 			 --%>
 			</form>
 		</div>
 	</div>
 
 

       
    
    <footer class="footer-list">
        <div class="ul-align">
            <ul class="list-box">
                <li>사업자등록번호 : 120-81-84429 | 통신판매업신고번호 : 제 2011-서울강남-00810호</li>
                <li>대표이사 : PETER DENWOOD | 주소 : 서울 특별시 강남구 영동대로 517</li>
                <li>대표전화 : 080-330-8877 | 팩스 : 02-6928-0000</li>
                <li>Apple 온라인 스토어는 업계 표준 암호화를 사용하여 제출된 고객 비밀 정보를 보호합니다. <a href="#">보안 정보</a>에 대해 더 알아보기.</li>
            </ul>
            <ul class="list-box">
                <li>다양한 쇼핑 방법: Apple Store를 방문하거나, 리셀러를 찾아보거나, 080-330-8877번으로 전화하세요.</li>
                <li>Copyright © 2020 Apple Inc. 모든 권리 보유.</li>
            </ul>
        </div>
    </footer>
</div>
<script>
	
</script>
</body>
</html>