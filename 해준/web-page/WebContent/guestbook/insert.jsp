<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>

<form name="frm_gb_insert" method="post" id="frm_gb_insert">
	<label>작성자</label>
	<input type="text" name="mid" class="mid" value="${sessionScope.mid}" readonly />
	<label>작성일</label>
	<output class="mdate" name="mdate"><%=new Date().toLocaleString()%></output>
	<br/>
	<textarea rows="5" cols="80" name="doc" class="doc"></textarea>

	<div class="btns">
		<label>암호</label> 
		<input type="password" name="pwd">
		<input type="button" value="저장" id="btnInsert">
	</div>
</form>
