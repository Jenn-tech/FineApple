<%@page import="review.ReviewVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="review.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>    
     
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Review</title>
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/review3.css"> 
<link rel="stylesheet" href="../css/header.css">
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/cupertino/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>
<style>

	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
<body>
<%
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}

%>
<div class="review">
	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면 %>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %> 
    <h3 class="review_h3">리뷰게시판</h3>
 	<div class="container">
 		<div class="row">
 			<table class="review-table" style="text-align: center;"> 
 				<thead>
 					<tr class="table-top">
 						<th class="no" style="background-color: #ffffff; text-align: center;">번호</th>
 						<th class="title" style="backlground-color: #ffffff; text-align: center;">제목</th>
 						<th class="name" style="background-color: #ffffff; text-align: center;">작성자</th>
 						<th class="date" style="background-color: #ffffff; text-align: center;">작성일</th>
 					</tr>
 				</thead>
 				<tbody>
 				<%
 					ReviewDao dao = new ReviewDao();
 					ArrayList<ReviewVo> list = dao.getList(pageNumber);
 					for(int i = 0; i< list.size(); i++){
 				%>
 					<tr class="table-item" style = "cursor:pointer;" onclick="location.href='view.jsp?reviewSerial=<%= list.get(i).getReviewSerial()%>'">
 						<td class="no"><%= list.get(i).getReviewSerial() %></td>
 						<td class="title"><%= list.get(i).getReviewTitle() %></td>
 						<td class="name"><%= list.get(i).getMemberId() %></td>
 						<td class="date"><%= list.get(i).getReviewDate().substring(0,11) + list.get(i).getReviewDate().substring(11,13)+"시"+list.get(i).getReviewDate().substring(14,16)+"분" %></td> 
 					</tr>
 				<%
 				}
 				%>
 				</tbody>
 			</table>
 			<% 
 				if(pageNumber != 1){
 			%>
 				<a href="review.jsp?pageNumber=<%=pageNumber - 1 %>" >이전</a>
 			<%
 				}if(dao.nextPage(pageNumber + 1)){
 			%>
 				<a href="review.jsp?pageNumber=<%=pageNumber + 1 %>" >다음</a>
 			<%
 				}
 			%>
 			
 			
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
		
		<input class="btn-write" type="button" value="글쓰기" onclick="location.href='write.jsp'">
	</div>
    
    
      <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
</div>

</body>
</html>