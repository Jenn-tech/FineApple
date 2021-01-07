<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
</head>
<body>
<div class="cs_notice_view_container">	
	<form action="" name="cs_frm_board" id="frm_cs_notice" method="post">
		<div class="frm_cs_notice_body">
			<div class="frm_cs_notice_view_body_item">
				</br>
				<h1>제목: ${vo.subject}</h1>
				</br>
				<div class="cs_notice_view_imfo">
					<span>조회수: ${vo.hit}</span>
					<span>작성 일자: ${vo.created}</span>
					<span>작성자: ${vo.memberName}</span>
					<span>문의 유형: ${vo.inquiryType}</span>
				</div>
			</div> 
			</br>
			<textarea rows="12" cols="70" name="doc" id="doc" readOnly style="border: 0; font-size: 1.1em; resize: none;">${vo.doc }</textarea>
		</div>
		<div class="cs_notice_view_repl">
			<h3>첨부 사진</h3>
			<div class="cs_notice_view_repl_form">
				<c:forEach items="${vo.attList }" var="att">
				<img alt="" src="<%=request.getContextPath() %>/inquiryUpload/${att.sysFile}" class="view_img">
				</c:forEach>
			</div>
		</div>
		<div class="cs_center_notice_insert_send_box">
			<input type="button" value="수정" id="cs_view_btnUpdate" class="cs_insert_btnSave">
			<input type="button" value="삭제" id="cs_view_btnDelete" class="cs_insert_btnSave">
			<input type="button" value="답변" id="cs_answer_btnInsert" class="cs_insert_btnCancel" style="float: right; background-color: rgb(91, 135, 164); color: #ffffff;">
			<input type="button" value="목록으로" id="cs_view_btnCancel" class="cs_insert_btnCancel">
			<input type="hidden" value="${param.nowPage}" name="nowPage"/>
			<input type="hidden" value="${param.findStr}" name="findStr"/>
			<input type='hidden' name='serial'  value='${vo.serial }'/>
			<input type='hidden' name='pwd'  value='${vo.pwd}'/>
			<input type="hidden" name="docvisible" value="${vo.docVisible}"/>
			<input type="hidden" name="hit" value="${vo.hit}"/>
			<input type="hidden" name="pserial" value="${vo.pserial }">
		</div>
	</form>
</div>


<script type="text/javascript">
inquiry()
</script>
</body>
</html>