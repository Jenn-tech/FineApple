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
		</br>
		<h3>다른 사람들이 궁금해했던 질문, 지금 확인해보세요! </h3>
		</header>
		<form action="" name="frm_board" method="post" id="frm_board">
			<input type="button" name="btnInsert" value="입력" class="btns">
			<div class="frm_board_btns">
				<input type="text" name="findStr" id="findStr">
				<input type="button" name="btnFind" id="btnFind" value="조회" class="btns">
				<input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}"/>
				<input type="hidden" name="mid"/>
			</div>
		</form>
	</div>
	<div class="cs_board_article">
		<span class="no">No</span>
		<span class="subject">제목</span>
		<span class="mid">작성자</span>
		<span class="mdate">작성일자</span>
		<span class="hit">조회수</span>
	</div>
	
	<div class="cs_board_items">
		<c:set var="no" value="${page.startNo}"></c:set>
			<c:forEach var="vo" items="${list}">
				<div class="cs_board_item" onclick="view('vo.mid')">
					<span class="no">${no}</span>
					<span class="subject">${vo.subject}</span>
					<span class="mid">${vo.mid}</span>
					<span class="mdate">${vo.mdate}</span>
					<span class="hit">${vo.hit}</span>
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