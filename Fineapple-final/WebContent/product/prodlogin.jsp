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
	String member_id=(String)session.getAttribute("member_mid");
	System.out.println(member_id);
	if(member_id == null){
%>
		<script>location.href='/Fineapple-final/login/loginfo.jsp';</script>
<% 	}else{%>
		<script>location.href='/Fineapple-final/purchase/purchase.do';</script>
<% }%>
</body>
</html>
<!-- 		response.sendRedirect("../login/loginfo.jsp");
		return;
		response.sendRedirect("../purchase/purchase.do"); -->