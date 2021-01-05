<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 결과(result)</title>
<link rel='stylesheet' type='text/css' href='<%=request.getContextPath() %>/css/review3.css'>
<script src='<%=request.getContextPath() %>/js/review.js'></script>
</head>
<body>
<div id='review'>
	<div class='result_msg'>
		작업이 처리 되었습니다.
	</div>
	<form name='frm_reivew' method='post'>
<%-- 		<input type='hidden' name='findStr' value='${page.findStr }'/>
		<input type='hidden' name='nowPage' value='${page.nowPage }'/> --%>
	
		<div class='btns'>
			<input type='button' value='목록으로' onclick="location.href='review.do?job=select'" />
		</div>		
	</form>
</div>
<script>review()</script>
</body>
</html>