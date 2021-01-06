<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Review</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/review3.css"> 
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<script src='<%=request.getContextPath() %>/js/review.js'></script>
</head>

<body>
<div class="review">
    	<!-- header영역 -->
		<jsp:include page="../main/header.jsp"/>

	<h3>리뷰글쓰기</h3>
 	<div class="container">
 		<div class="row">
 		<form method="post" name="frm_review">
	 			<table class="review-table-detail" style="text-align: center;"> 
	 				<tbody>
	 					<tr>
	 						<td class="table-left">작성자</td>
	 						<td class="table-right" colspan="2"><input type="text"  placeholder="작성자" name="memberId" style="width: 100%; height: 45px;" maxlength="50" value="jeong" readonly="readonly"></td>
	 					</tr>
	 					<tr>
	 						<td class="table-left">제목</td>
	 						<td class="table-right" colspan="2"><input type="text" placeholder="글 제목" name="reviewTitle" style="width: 100%; height: 45px;" maxlength="50"></td>
	 					</tr>
	 					<tr>
							<td class="table-left">사진</td>
							<td class="table-right" colspan="2"><input type='file' name='reviewImg' id='btnPhoto'/>
							<img src='http://placehold.it/200x140' id='photo' width='200px' height='140px'/>
							<hr/>
							</td>
							
						</tr>
	 					<tr>
	 						<td id="table-doc" class="table-right" colspan="2"><textarea placeholder="글 내용" name="reviewDoc" maxlength="2000" style="height: 350px; width: 100%;"></textarea></td>
	 					</tr>
	 				</tbody>
	 			</table>
					 <!-- buttons -->
	 			<div class = 'btns'>
	 				<input type="button" class="btn-review-write" id="btnSave" value="글쓰기"/>
	 				<input type='button' value='목록으로' id='btnSelect' />
 				</div>
 			</form>
 		</div>
 	</div> 
 
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   	
</div>
<script type="text/javascript">
review()
</script>
</body>
</html>