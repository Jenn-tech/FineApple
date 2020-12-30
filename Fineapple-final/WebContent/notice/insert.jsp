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
<div class = 'notice-container'>
	<div class = 'notice_view'>
		<table >
			<tr>
				<th scope='row'>제목</th>
				<td>정말 정말 긴 제목이었을 때 어떡할건데?</td>
			</tr>
			<tr>
				<th scope='row'>작성일</th>
				<td>2020-01-10</td>
			</tr>
			<tr>
				<th scope='row'>조회수</th>
				<td>0</td>
			</tr>
			<tr class = 'view'>
				<td colspan ='2'>
					<div class ='content'>
						<img src = '../images/notice/notice_photo1.jpg'/>
					</div>				
				</td>
			</tr>
		</table>
	</div>
</div>
			
	
<!-- buttons -->
	<div class = 'btns'>
		<input type = 'button' value = '목록'  name = 'btnSelect' id = 'btnSelect'/>
	</div>
			
	
   <!-- footer영역 -->
   	<%@include file="/main/footer.jsp" %>	
</body>
</html>