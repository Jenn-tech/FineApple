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
<link rel="stylesheet" href="../css/header.css">
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
<div class="review">
	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %> 
	
	<h3>리뷰게시판</h3>
 	<div class="container">
 		<div class="row">
 		<form action="writeAction.jsp" method="post">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td class="table-title" colspan="2"><%= rv.getReviewTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>") %></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성자</td>
	 						<td class="table-right" colspan="2"><%= rv.getMemberId() %></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">작성일자</td>
	 						<td class="table-right" colspan="2"><%= rv.getReviewDate()%></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">내용</td>
	 						<td class="table-right" id="table-doc" colspan="2"><%= rv.getReviewDoc().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n","<br>")%></td>
	 					</tr>
	 				</tbody>
	 			</table>
	 			<%--
	 				if(memberId != null && memberId.equals(rv.getMemberId())){
	 					<a href="update.jsp?memberId=<% memberId%>" > 수정 </a>
	 					<a href="deleteAction.jsp?memberId=<% memberId%>" > 삭제 </a>
	 				}
	 			
	 			 --%>
 			</form> 
 		</div>
 	</div>
 <!-- buttons -->
	<div class = 'btns'>
		<input class="btn-write" type="button" value="목록" onclick="location.href='review.jsp'">
		<input class="btn-write" type="button" value="수정" onclick="location.href='update.jsp?reviewSerial=<%= rv.getReviewSerial()%>'">
		<input class="btn-write" type="button" value="삭제" onclick="location.href='deleteAction.jsp?reviewSerial=<%= rv.getReviewSerial()%>'">
	</div>
 

       
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</div>
<script> 
	
</script>
</body>
</html>