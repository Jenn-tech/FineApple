<%@page import="java.io.PrintWriter"%>
<%@page import="review.ReviewDao"%>
<%@page import="review.ReviewVo"%>
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
	<h3>리뷰글수정</h3>
 	<div class="container">
 		<div class="row">
 		<form action="updateAction.jsp?reviewSerial=<%=reviewSerial%>" method="post">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td><input type="text" class="form-control" placeholder="글 제목" name="reviewTitle" maxlength="50" style="width: 100%; height: 45px;" value="<%=rv.getReviewTitle()%>"></td>
	 					</tr>
	 					<tr>
	 						<td><textarea class="form-control" placeholder="글 내용" name="reviewDoc" maxlength="2000" style="height: 350px; width: 100%;"><%=rv.getReviewDoc()%></textarea></td>
	 					</tr>
	 				</tbody>
	 			</table>
	 				<input type="submit" class="btn-review-write" value="글수정"/>
 			</form>
 		</div>
 	</div>
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %> 
</div>

<script>
	
</script>
</body>
</html>