<%@page import="java.util.ArrayList"%>
<%@page import="mypage.CartListVo"%>
<%@page import="java.util.List"%>
<%@page import="mypage.CartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
<jsp:include page="../main/header.jsp"/>
</div>
<%
//해당 상품정보 받아오기
List<CartListVo> list = new ArrayList<CartListVo>();
CartDao dao = new CartDao();
String member_id=(String)session.getAttribute("member_mid");

list = dao.CartList(member_id);
%>
 <form action="">
<c:forEach var='list' items="list">
 <input type="radio" name="product_name_list" value="${list.product_name }">
</c:forEach>
 <form>	


</body>
</html>