<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰리스트</title>
<link rel="stylesheet" type="text/css" href="./css/reviewcss.css">
<script src="">스크립트 들어올 자리</script>

</head>
<body>
<div id="review">
	<h3>REVIEW</h3>
	<form name="frm_review" method="post" id="frm_review">
		<input type="button" value="입력" id="btnlist">
		<div>
			<input type="text" name="findStr" class="findStr"　value="${param.findStr }" >
			<input type="button" value="검색" id="btnFind">
			<input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1 : param.nowPage}"/>
			<input type="hidden" name="mid">
		</div>
						
	</form>
	<div class="title">
		<span class="no">NO</span>
		<span class="id">아이디</span>
		<span class="proname">상품명</span>
		<span class="redate">작성시간</span>
	</div>
	
	<div class="items">
		
		<c:set var='no' value="${page.startNo}" >
			<c:forEach var="vo" items="${list }">
				<div class="item" onclick="view('${vo.mid}')">
					<span class="no">${no}</span>
					<span class="id">${vo.mid }</span>
					<span class="proname">${vo.itemname }</span>
					<span class="redate">${vo.redate }</span>
				</div>
				<c:set var="no" value="${no=no+1 }"/>
			</c:forEach>
		</c:set>
	</div>
	
	<div class='paging'>
		<c:if test="${page.startPage>1 }">
			<input type='button' value='처음' id='btnFirst' onclick="goPage(1)" />
			<input type='button' value='이전' id='btnPrev' onclick="goPage(${page.startPage-1})" />
		</c:if>
		
		<c:forEach var="i" begin="${page.startPage }" end="${page.endPage }">
			<input type='button' value='${i}'
			${(param.nowPage==i) ? 'disabled' : ''}
			onclick='goPage(${i})'/>
		</c:forEach>

		<c:if test="${page.endPage<page.totPage }">
			<input type='button' value='다음' id='btnNext' onclick='goPage(${page.endPage+1})'/>
			<input type='button' value='마지막' id='btnLast' onclick='goPage(${page.totPage})'/>
		</c:if>
	
	</div>
</div>
</body>
</html>