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
		response.sendRedirect("../purchase/index.jsp"); 

	}else{
		response.sendRedirect("../login/loginfo.jsp");
	}
%>
</body>
</html>