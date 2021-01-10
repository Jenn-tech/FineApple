<%@page import="product.ProductVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지</title>
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/admin_index.css">
    <link rel="shortcut icon" href="../images/favicon.png">
    <link rel="icon" href="favicon.ico">
</head>
<body>
<jsp:useBean id="dao" class="product.ProductDao"/>

		<!-- header영역 -->
	<jsp:include page="../main/header.jsp"/>
	
	<header class="cs_func_page_header">
		<h1 style="font-size: 2em;">관리자페이지</h1>
		<div class="cs_category">
			<a href="admin_member.jsp">회원관리</a>
			<a href="admin_product.jsp">상품관리</a>
			<a href="#">매출통계</a>
		</div>
</header>
	
<div class="admin-container">


	<h2> 전체 상품 관리</h2>


	<table class = "admin-table" style="width:100%" >

		<tr >

			<th>상품코드</th><th>분류</th><th>이름</th><th>가격</th><th>정보</th>

		</tr>

	<%
	ArrayList<ProductVo> list =dao.getProductAll();

	for(ProductVo vo : list){
	%>
			<tr>
				<td><%=vo.getProduct_serial()%></td>
				<td><%=vo.getProduct_description()%></td>
				<td><%=vo.getProduct_name() %></td>
				<td><%=vo.getProduct_price() %></td>
				<td><a href="javascript:admin_view_member('')">상세보기</a></td>
			</tr>
	<%} %>
	</table>	
	<form action="member_modify_admin_form.jsp" name="modifyFrm" method="post">
		<input type="hidden" name="id">
	</form>
</div>
	
   <!-- footer영역 -->
   	<%@include file="../main/footer.jsp" %>

</body>
</html>