<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../main/header.jsp"/>
<%
	CartDao dao = new CartDao();
	int product_serial=Integer.parseInt(request.getParameter("product_serial"));
	int product_amount=Integer.parseInt(request.getParameter("amount"));

	String mid = (String)session.getAttribute("member_mid");
	
	if(mid != null){
		dao.insertCart(mid, product_serial, product_amount);
		System.out.print("이거 되냐구..");
	%>
		<script>location.href = "../purchase/index.jsp"; </script>
	<%
	}else{
		System.out.print("이거 안되냐구..");
	%>
		<script>location.href = "../login/loginfo.jsp"; </script>
	<%}%>
</body>
</html>