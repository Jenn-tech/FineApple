<%@page import="event.EventVo"%>
<%@page import="java.util.List"%>
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
<jsp:useBean id="dao" class="event.EventDao"/>

<!-- header -->
<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/main/header2.jsp"/>
	
	<%} %>


		<h3 class = 'event_h3'>이벤트</h3>

					
<!-- 검색하기 -->	
<div class = 'event_container_list'>
	<div id = 'event_search'>
		<form name = 'frm_event' method = 'POST'>
			<div class = 'event_search_input'>
				<input type = 'button'	class ='btnInsert' id = 'btnInsert' value = '입력'/>
				<div class='event_search_box'>
				<input type = 'text' name = 'findStr' id = 'findStr'/>
				<input type = 'button' name = 'btnFind' id = 'btnFind' value = '검색' class='frm_event_btns'/>
				</div>
			</div>
		</form>
	</div>
	

	<%		String findStr = "";
	if(request.getParameter("findStr") != null) {
		findStr = request.getParameter("findStr");
	}
		
			List<EventVo> list = dao.select("");
			request.setAttribute("list", list);

	%>	

	
<!-- event 글 list -->
<!-- <div class = "event-container">
	<c:forEach var="vo" items="${list }">
		<div class = 'event_items'>
			<div class = 'item' onclick="view('${vo.serial}')">
				<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' id=photo width = '400px' height = '250px'/>	
				<br>		
				<span class = 'subject' >${vo.subject }</span>			
			</div>
		</div>	
	</c:forEach>
</div> -->			
<div class = "event-container">
		<div class = 'event_items'>
			<ul class = 'item' onclick="view('${vo.serial}')">
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				<li onclick="view('${vo.serial}')" class='items-lecord'>
					<div class='box' >
						<img src = 'https://stylenanda.com/file_data/nandaglobal//2020/12/24/8c5365d26fda2b251faa3df172a5692b.jpg' class='photo' />	
						<br>		
						<span class = 'subject' >Merry holiday event</span>	
					</div>
				</li>
				
				
				
				
				
				
				
				
						
			</ul>
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
<script>event()</script>
</body>
</html>