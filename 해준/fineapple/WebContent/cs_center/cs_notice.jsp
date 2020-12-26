<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 사항</title>
</head>
<body>
<div class="cs_board">
	<div class="cs_board_body">
		<header class="cs_notice_title">
		<h2>공지사항</h2>
		</br>
		<h3>FINEAPPLE에서 새로운 소식을 전달드립니다.</h3>
		</header>
		<form action="" name="frm_board" method="post" id="frm_board">
			<input type="button" name="btnInsert" value="글쓰기" class="btns">
			<div class="frm_board_btns">
				<input type="text" name="findStr" id="findStr">
				<input type="button" name="btnFind" id="btnFind" value="조회" class="btns">
			</div>
		</form>
	</div>
	<div class="cs_board_article">
		<span class="no">No</span>
		<span class="subject">제목</span>
		<span class="name">작성자</span>
		<span class="mdate">작성일자</span>
		<span class="hit">조회수</span>
	</div>
	
	<div class="cs_board_items">
		<c:set var="no" value="${page.startNo }"></c:set>
			<c:forEach var="no" begin="1" end="${list }">
				<div class="cs_board_item" onclick="view('vo.mid')">
					<span class="no">${no}</span>
					<span class="subject">제목</span>
					<span class="name">작성자</span>
					<span class="mdate">작성일자</span>
					<span class="hit">조회수</span>
				</div>
			</c:forEach>
		<c:set var="no" value="${no=no+1 }"></c:set>	
	</div>
	
	
	<div class="cs_board_paging">
		<c:if test="${page.startPage>1}">
			<input type="button" value="맨 처음">
			<input type="button" value="이전">
		</c:if>	
			<c:forEach var="i" begin="1" end="5">
				<input type="button" value="${i}">
			</c:forEach>
		<c:if test="${page.endPage<page.totPage }">
			<input type="button" value="다음">
			<input type="button" value="맨 끝 ">
		</c:if>		
	</div>
</div>
<script type="text/javascript">
	question()
</script>
</body>
</html>