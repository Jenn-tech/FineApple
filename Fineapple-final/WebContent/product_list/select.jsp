<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/productlist.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
<script src = './js/Productlist.js'></script>
		
</head>

<body>
<jsp:useBean id="dao" class="product.ProductDao"/>

	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="../main/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="../main/header2.jsp"/>
	
	<%} %>
	
</head>
<body>
	<div id = "content">
		<div id = "cont-wrap" >
			<div class="cate_top_txt"><h1>search</h1></div>
        </div>
<h1>어쩌구</h1>
		<div class="search_bar">
                 <form  name="frm_search" role="search" method="get" class="search-form" >
                     <input type="search" class="search-field" placeholder="상품명" value="${param.findStr }" name="findStr" />
                    <input type="submit"  name="btnFind" class="search-submit"/>검색
                    <input type="hidden" name="nowPage" value="${(empty param.nowPage)? 1: param.nowPage}" size="10">
					<input type="hidden" name="serial" size="10" >
					<input type="hidden" name="search" value="select">
                 </form>
            </div>
		<%
		String findStr = "";
		if(request.getParameter("findStr") != null) {
			findStr = request.getParameter("findStr");
		}
		
		List<ProductVo> list = dao.select(findStr);
		request.setAttribute("list", list);

	%>	
		</div>
		<div id = "product_list">
			<c:forEach var = "vo" items = "${list }">
	 			<figure class="product">
	                <img src="${vo.pictureUrl }" width="250px" height="230px" />
	                <figcaption>
	                  <h3>  더 알아보기</h3>
	                  <h5>more detail</h5>
	                </figcaption>
	                <a href="${vo.linkUrl }"></a>
	                <div id="detail">${vo.name}</br>${vo.price }</div>
				</figure>
			</c:forEach>
		</div>
	
	



   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>
   
</body>
</html>