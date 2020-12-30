<%@page import="review.ReviewVo"%>
<%@page import="review.ReviewDao" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<link rel='stylesheet' type='text/css' href='../css/review.css'>
<script src='../js/review.js'></script>
</head>
<body>
<jsp:useBean id="dao" class="review.ReviewDao"/>
<div id ='review'>
   <h2>리뷰</h2>
   <%-- 검색바 --%>
   
   <form name='frm_rv' id='frm_rv' method='post'>
    	<div>
			<input type='text' name='findStr' class='findStr' value='${param.findStr }'>
			<input type='button' value='검색' id='btnFind'/>
			<input type='hidden' name='nowPage' value='${param.nowPage}'/>
			<input type='hidden' name='id' />
		</div>
   </form>
   <%
      String findStr = "";
         if(request.getParameter("findStr") != null){
            findStr = request.getParameter("findStr");
         }
         
         List<ReviewVo> list = dao.select(findStr);
         request.setAttribute("list", list);
            // jstl 을 사용함. 밑에있는 list의 부분을 이용
   %>   
   
   
   <%--방명록 list --%>
   <div class='title'>
		<span class='numbering'>NO</span>
		<span class='id'>아이디</span>
		<span class='proname'>상품이름</span>
		<span class='redate'>작성일</span>
	</div>
	<div class='items'>
		<c:set var='no' value='${page.startNo }'/>
		<c:forEach var='vo' items="${list }">
			<div class='item' onclick="view('${vo.id}')">
				<span class='numbering'>${vo.numbering }</span>
				<span class='id'>${vo.id }</span>
				<span class='proname'>${vo.proname }</span>
				<span class='redate'>${vo.redate }</span>
			</div>
			<c:set var='no' value = '${no=no+1 }'/>
		</c:forEach>
	</div>
		
	<div class='btns'>
		<input type="button" value="글작성" id="btnInsert" name="btnInsert">
		<input type='button' value='수정' id='btnUpdate' name="btnUpdate" onclick='funcUpdate(this.form)'/>
		<input type='button' value='삭제' id='btnDelete' name="btnDelete" onclick='funcDelete(this.form)'/>
	</div>
	
	<div class='paging'>
		<c:if test="${page.startPage>1 }">
			<input type='button' value='맨첨' id='btnFirst' onclick='goPage(1)'/>
			<input type='button' value='이전' id='btnPrev' onclick='goPage(${page.startPage-1})'/>
		</c:if>
		
		<c:forEach var="i" begin='${page.startPage }' end='${page.endPage }'>	
			<input type='button' value='${i }' 
				${(param.nowPage==i)? 'disabled' : '' }  
				onclick='goPage(${i})' />
		</c:forEach>
	
		<c:if test="${page.endPage<page.totPage }">
			<input type='button' value='다음' id='btnNext' onclick='goPage(${page.endPage+1})'/>
			<input type='button' value='맨끝' id='btnLast' onclick='goPage(${page.totPage})'/>
		</c:if>	
	</div>
	
	
	
	
	
	
<%--    <div id='list'>
      <c:forEach var = 'vo' items='${list }'>
      <div id='item'>
	      <form name="frm_temp" method="post">
	         <label>작성자</label>
	         <input type="text" name="id" readonly="readonly" class='id' value="${vo.id}"/>
	         <label>작성일자</label>
	         <output class='redate'>${vo.redate}</output>
	         <br/>
	         <textarea rows="5" cols="80" name="doc" disabled>${vo.doc }</textarea>
	         <br/>
	         
	        
		         <div class='btns'>
		            <input type='button' value='수정' id='btnUpdate' name="btnUpdate" onclick='funcUpdate(this.form)'/>
		            <input type='button' value='삭제' id='btnDelete' name="btnDelete" onclick='funcDelete(this.form)'/>
		         </div>
	         <input type="hidden" name="numbering" value="${vo.numbering}">
	         <input type="hidden" name="pwd" />
	      </form>
	      
      </div>
      </c:forEach>
   </div> --%>
      
      
   
   
</div>
<script>review()</script>
</body>
</html>





