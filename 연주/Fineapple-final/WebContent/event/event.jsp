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
<title>event</title>

<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/event.css">
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


		<h3 class = 'event_h3'>공지사항</h3>

					
<!-- 검색하기 -->	
	<div id = 'event_search'>
		<form name = 'frm_board' method = 'POST'>
			<input type = 'button'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
			<div>
				<input type = 'text' name = 'findStr' id = 'findStr'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value = '검색'/>
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
	
	<!-- event-title메뉴 -->
	
<div class = "event-container">
	<div class = 'event_title'>
		<span class = 'no'>NO</span>
		<span class = 'subject'>제목</span>
		<span class = 'mdate'>작성일</span>
		<span class = 'hit'>조회수</span>
	</div>
	
<!-- event 글 list -->

		<div class = 'event_items'>
				<c:forEach var ='vo' items ='${list }'>
		
			<div class = 'item'>
				<span class = 'no'>${vo.noticeNo }</span>			
				<span class = 'subject' onclick="view('${vo.noticeNo}')" >${vo.noticeSubject }</span>			
				<span class = 'mdate'>${vo.noticeDate }</span>			
				<span class = 'hit'>${vo.noticeHit }</span>			
			</div>
			</c:forEach>
		</div>	
		
		
</div>			

			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '<<'/>
		<input type = 'button' value = '<'/>

		<c:forEach var = 'i' begin = '1' end = '5'>
			<input type = 'button'class = 'num' value = '${i }'>
		</c:forEach>

		<input type = 'button' value = '>'/>
		<input type = 'button' value = '>>'/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>