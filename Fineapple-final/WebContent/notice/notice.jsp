<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="notice.NoticeVo"%>
<%@page import="notice.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/notice.css">
<link rel="stylesheet" href="../css/footer.css">
<script type="text/javascript" src="../js/notice.js"></script>

</head>
<body>
<jsp:useBean id="dao" class="notice.NoticeDao"/>

<!-- header -->
<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/main/header2.jsp"/>
	
	<%} %>


		<h3 class = 'notice_h3'>공지사항</h3>

					
<!-- 검색하기 -->	
	<div id = 'notice_search'>
		<form name = 'frm_notice' method = 'POST'>
			<input type = 'hidden'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
			<div>
				<input type = 'text' name = 'findStr' id = 'findStr'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value = '검색'/>
				<input type="hidden" name="noticeNo" size="5" >
				
			</div>
		</form>
	</div>
	
<%		String findStr = "";
if(request.getParameter("findStr") != null) {
	findStr = request.getParameter("findStr");
}
	
		List<NoticeVo> list = dao.select("");
		request.setAttribute("list", list);

	%>	
	
	<!-- notice-title메뉴 -->
	
<div class = "notice-container">
	<div class = 'notice_title'>
		<span class = 'no'>NO</span>
		<span class = 'subject'>제목</span>
		<span class = 'mdate'>작성일</span>
		<span class = 'hit'>조회수</span>
	</div>
	
<!-- notice 글 list -->

		<div class = 'notice_items'>
				<c:forEach var ='notice' items ='${list }'>
		
			<div class = 'item'>
				<span class = 'no'>${notice.noticeNo }</span>			
				<span class = 'subject' onclick="view('${notice.noticeNo}')" >${notice.noticeSubject }</span>			
				<span class = 'mdate'>${notice.noticeDate }</span>			
				<span class = 'hit'>${notice.noticeHit }</span>			
			</div>
			</c:forEach>
		</div>	
		
		
</div>			

			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '<'/>
		<input type = 'button'class = 'num' value = '1'>
		<input type = 'button' value = '>'/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>