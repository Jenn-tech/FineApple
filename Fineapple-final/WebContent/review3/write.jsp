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
<div class="review">
    	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %> 
	<h3>리뷰글쓰기</h3>
 	<div class="container">
 		<div class="row">
 		<form action="writeAction.jsp" method="post">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td><input type="text" class="form-control" placeholder="글 제목" name="reviewTitle" style="width: 100%; height: 45px;" maxlength="50"></td>
	 					</tr>
	 					<tr>
	 						<td><textarea class="form-control" placeholder="글 내용" name="reviewDoc" maxlength="2000" style="height: 350px; width: 100%;"></textarea></td>
	 					</tr>
	 				</tbody>
	 			</table>
	 			<div class = 'btns'>
	 				<input type="submit" class="btn-review-write" value="글쓰기"/>
 				</div>
 			</form>
 		</div>
 	</div> 
 <!-- buttons -->
	
	
 
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</div>
<script>
	
</script>
</body>
</html>