<%@page import="java.util.List"%>
<%@page import="review.ReviewVo"%>
<%@page import="review.ReviewDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리(insert)</title>
<link rel='stylesheet' type='text/css' href='../css/review.css'>
<script src='../js/review.js'></script>
</head>
<body>
<jsp:useBean id="dao" class="review.ReviewDao"/>
   <%
      String findStr = "";
         if(request.getParameter("findStr") != null){
            findStr = request.getParameter("findStr");
         }
         List<ReviewVo> list = dao.select(findStr);
         request.setAttribute("list", list);
         
        String id = request.getParameter("id");
		String proname = request.getParameter("proname");
		String category = request.getParameter("category");
		String redate = request.getParameter("redate");
		String doc = request.getParameter("doc");
		String numbering = request.getParameter("numbering");
   %>   

    
    
<div id='review'>
	<h2>회원관리</h2>
	
	<form name='frm_rv' method='post' class='view'>
		<label>NO</label>
		<input type='text' name='numbering' disabled size='10' value='${numbering }'/>
		
		<label>작성자</label>
		<input type='text' name='id' disabled size='10' value='${id }'/>
		
		<label>카테고리</label>
		<input type='text' name='category' disabled size='10' value='${category }'/>
		
		<label>제품명</label>
		<input type='text' name='proname' disabled size='12' value='${proname }'/>
		
		<label>작성일자</label>
		<input type='text' name='redate' disabled size='60'  value='${redate }'/>
		<br/>
		<textarea rows="15" cols="80" name="doc" disabled>${doc }</textarea>
		<hr/>
	
		<div class='btns'>
			<input type='button' value='수정' id='btnModify' />
			<input type='button' value='삭제' id='btnDelete' />
			<input type='button' value='목록으로' id='btnSelect' />
		</div>
		
		<input type='hidden' name='findStr' value='${param.findStr }'/>
		<input type='hidden' name='nowPage' value='${param.nowPage }'/>
		<input type='hidden' name='delFile' value='${vo.photo }' />
		<input type='hidden' name='pwd' />
	</form>

</div>
<script></script>
</body>
</html>