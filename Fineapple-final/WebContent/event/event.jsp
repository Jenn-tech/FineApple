<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event</title>

<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/event.css">
<script type="text/javascript" src="../js/event.js"></script>

</head>
<body>

<!-- header -->
<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/main/header2.jsp"/>
	
	<%} %>


		<h3 class = 'event_h3'>이벤트</h3>

					
<!-- 검색하기 -->	
	<div id = 'event_search'>
		<form name = 'frm_event' method = 'POST'>
			<input type = 'button'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
			<div>
				<input type = 'text' name = 'findStr' id = 'findStr'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value = '검색'/>
				<input type="hidden" name="eventNo" size="5" >
				
			</div>
		</form>
	</div>
	

	

	
<!-- event 글 list -->
<div class = "event-container">
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
		</div>	
		<div class = 'event_items'>
			<div class = 'item'>
				<span class = 'no'>${event.eventNo }</span>			
				<img src = 'http://placehold.it/400x250' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' onclick="view('${event.eventNo}')" >제목</span>			
			</div>
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