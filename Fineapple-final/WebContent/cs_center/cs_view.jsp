<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<script type="text/javascript" src="../js/inquirybook.js"></script>
</head>
<body>
<div class="cs_notice_view_container">	
	<form action="" name="cs_frm_board" id="frm_cs_notice" method="post">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_view_body_item">
				<a href="cs_func_page.jsp?func=./cs_center/cs_board.jsp" style="color: rgb(91, 135, 164); font-size: 0.8em; margin-bottom: 15px; display: block;"> 게시판으로 돌아가기 > </a>
				</br>
				<h1>제목: ${vo.subject}</h1>
				</br>
				<div class="cs_notice_view_imfo">
					<span>조회수: ${vo.hit}</span>
					<span>작성자: ${vo.memberName}</span>
					<span>작성 일자: ${vo.created}</span>
				</div>
			</div> 
			</br>
			<textarea rows="12" cols="70" name="doc" id="doc" readOnly style="border: 0; font-size: 1.1em; resize: none;">${vo.doc }</textarea>
		</div>
		<div class="cs_notice_view_repl">
			<h3>첨부 사진</h3>
			<div class="cs_notice_view_repl_form">
				<c:forEach items="${vo.attList }" var="att">
				<img alt="" src="./inquiryUpload/${att.sysFile }" class="view_img">
				</c:forEach>
			</div>
		</div>
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="수정" id="cs_view_btnUpdate" class="cs_insert_btnSave">
			<input type="button" value="삭제" id="cs_view_btnDelete" class="cs_insert_btnSave">
			<input type="button" value="답변" id="cs_answer_btnInsert" class="cs_insert_btnCancel" style="float: right; background-color: rgb(91, 135, 164); color: #ffffff;">
			<input type="button" value="목록으로" id="cs_insert_btnCancel" class="cs_insert_btnCancel">
			<input type="text" value="${param.nowPage}" name="nowPage"/>
			<input type="text" value="${param.findStr}" name="findStr"/>
			<input type='hidden' name='serial'  value='${vo.serial }'/>
			<input type='hidden' name='pwd'  value='0'/>
			<input type="hidden" name="adminPwd" value="0">
		</div>
	</form>
</div>


<script type="text/javascript">
inquiry()
</script>
</body>
</html>