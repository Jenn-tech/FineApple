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


	
<%		String findStr = "";
if(request.getParameter("findStr") != null) {
	findStr = request.getParameter("findStr");
}
	
		List<NoticeVo> list = dao.select("");
		request.setAttribute("list", list);

	%>	
	
	<!-- event-title메뉴 -->
	
<div class = "event-container">

<!-- event 글 list -->

		<div class = 'event_items'>
				<c:forEach var ='vo' items ='${list }'>
		
			<div class = 'item'>
				<span class = 'no'>${vo.noticeNo }</span>			
				<span class = 'subject'>${vo.noticeSubject }</span>			
				<span class = 'mdate'>${vo.noticeDate }</span>			
				<span class = 'hit'>${vo.noticeHit }</span>			
			</div>
			</c:forEach>
		</div>	
		
		
</div>			

			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '목록'/>

	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>