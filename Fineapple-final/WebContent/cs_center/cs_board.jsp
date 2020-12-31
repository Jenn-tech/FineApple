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
	<header class="cs_board_title">
	<h1 style="font-size: 2em;">게시판</h1>
	</br>
	<h2 style="font-weight: bold">다른 사람들이 궁금해했던 질문, 지금 확인해보세요! </h2>
	</header>
		
	<form action="" name="frm_board" method="post">
		<div class="cs_board_input">
			<input type="button" name="btnInsert" value="입력" class="frm_board_btns" />
			<div class="cs_board_input_select-box">
			<input type="text" name="findStr" placeholder="검색어를 입력해주세요!" />
			<input type="button" name="btnFind" id="btnFind" value="조회" class="frm_board_btns" />
			</div>
		</div>
	</form>
	
	<div class="cs_board_article">
		<span class="no">No</span>
		<span class="subject">제목</span>
		<span class="name">작성자</span>
		<span class="mdate">작성일자</span>
		<span class="hit">조회수</span>
	</div>
	
	<div class="cs_board_items">
		<c:set var="no" value="${page.startNo}"></c:set>
			<c:forEach var="vo" items="${list}">
				<div class="cs_board_item" onclick="view('vo.mid')">
					<span class="no">${no}</span>
					<span class="subject">${vo.subject}</span>
					<span class="name">${vo.mid}</span>
					<span class="mdate">${vo.mdate}</span>
					<span class="hit">${vo.hit}</span>
				</div>
			</c:forEach>
		<c:set var="no" value="${no=no+1 }"></c:set>	
	</div>
	
	<div class="cs_board_paging">
		<%-- <c:if test="${page.startPage>1}"> --%>
			<input type="button" value="first" id="paging_btns">
			<input type="button" value="<">
		<%-- </c:if> --%>
			<c:forEach var="i" begin="1" end="5">
				<input type="button" value="${i}">
			</c:forEach>
		<%-- <c:if test="${page.endPage<page.totPage }"> --%>
			<input type="button" value=">">
			<input type="button" value="end" id="paging_btns">
		<%-- </c:if> --%>		
	</div>
	
	<form action="" name="frm_board" method="post">
		<input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}"/>
		<input type="hidden" name="mid"/>
	</form>
</div>
<script type="text/javascript">
	question()
</script>
</body>
</html>