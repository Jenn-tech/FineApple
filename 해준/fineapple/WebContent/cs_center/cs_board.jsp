<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
<div class="cs_board">
	<div class="cs_board_body">
		<header class="cs_board_title">
		<h2>게시판</h2>
		</header>
		<form action="" name="frm_board" method="post" id="frm_board">
			<input type="button" name="btnInsert" value="입력">
			<div class="frm_board_btns">
				<input type="text" name="findStr" id="findStr">
				<input type="button" name="btnFind" id="btnFind" value="조회">
			</div>
		</form>
	</div>
	<div class="cs_board_article">
		<span class="no">No</span>
		<span class="subject">제목</span>
		<span class="name">작성자</span>
		<span class="mate">작성일자</span>
		<span class="hit">조회수</span>
	</div>
	
	<div class="cs_board_items">
		<c:forEach var="no" begin="1" end="12">
			<div class="cs_board_item">
				<span class="no">${no}</span>
				<span class="subject">제목</span>
				<span class="name">작성자</span>
				<span class="mdate">작성일자</span>
				<span class="hit">조회수</span>
			</div>
		</c:forEach>
	</div>
	<div class="cs_board_paging">
			<input type="button" value="맨 처음">
			<input type="button" value="이전">
		<c:forEach var="i" begin="1" end="5">
			<input type="button" value="${i}">
		</c:forEach>
			<input type="button" value="다음">
			<input type="button" value="맨 끝 ">
	</div>
</div>
<script type="text/javascript">
	question()
</script>
</body>
</html>