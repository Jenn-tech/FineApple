<%@page import="review.ReviewVo"%>
<%@page import="review.ReviewDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="dao" class="review.ReviewDao" />
<jsp:useBean id="vo" class="review.ReviewVo"/>
<jsp:setProperty property="*" name="vo"/>

<%
	String msg = dao.update(vo); 
	request.setAttribute("msg",	msg);
%>

<script>
	alert('${msg}');
	location.href='./review2/select.jsp';
</script>


    
