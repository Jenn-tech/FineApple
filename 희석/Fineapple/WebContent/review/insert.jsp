<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form name="frm_rv_insert" method="post" id="frm_rv_insert">
	<label>작성자</label>
	<input type="text" name="mid" class="mid" readonly="readonly" value="${sessionScope.mid}">
	<label>상품명</label>
	<input type="text" name="mid" class="mid" readonly="readonly" value="${sessionScope.mid}">
	<label>작성일</label>
	<output class="redate"><%=new Date().toLocaleString()%></output> 
	<br/> 
	<textarea name="doc" rows="20" cols="60"></textarea>
	
	<div class="btns">
		<input type="button" value="저장" id="btnInsert">
		<input type="button" value="취소" id="btnCancle">
	</div>
</form>