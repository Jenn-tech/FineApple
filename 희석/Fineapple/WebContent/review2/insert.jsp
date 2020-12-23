<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="frm_rv_insert" method="post" id="frm_rv_insert">
	<label>작성자</label>
	<input type="text" name="id" class="id" readonly="readonly" value="${sessionScope.id}">
	<label>상품명</label>
	<input type="text" name="id" class="id" readonly="readonly" value="${sessionScope.id}">
	<label>작성일</label>
	<output class="redate"><%=new Date().toLocaleString()%></output> 
	<br/> 
	<textarea name="doc" rows="20" cols="60"></textarea>
	
	<div class="btns">
		<input type="button" value="저장" id="btnInsert">
		<input type="button" value="취소" id="btnCancle">
	</div>
</form>