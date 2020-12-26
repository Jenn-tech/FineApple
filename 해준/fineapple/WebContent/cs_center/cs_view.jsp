<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post" name="frm_question" id="frm_question">
<div>
    <label for="inquiryType">문의 유형</label>
    <input name="inquiryType" id="inquiryType" aria-placeholder="문의 유형" value="" >
</div>

 <div>
    <label for="ordernum">주문 번호</label>
    <input type="text" id="ordernum" placeholder="주문 번호를 입력하세요." size="25" name="ordernum"/>
    <input type="button" id="orderNumSearch" value="검색">
</div>

<div>
    <label for="pwd">비밀 번호</label>
    <input type="password" placeholder="비밀번호를 입력해주세요." id="pwd" size="25" name="pwd"/>
</div>

<div>
   <label for="mid">작성자</label>
   <input type="text" placeholder="이름을 입력해주세요." name="name" id="name" size="25"/>
</div>

   <input type="file" name="photo" id="btnPhoto"/>
   <img alt="" src="http://placehold.it/200x140" id="photo" style="width: 200px; height: 140px;">
<br/>
	<input type="text" size="100" name="subject" id="subject">
	<textarea name="doc" id="doc" cols="80" rows="10" style="width: 100%" style="text-indent: 1em;"></textarea>
<br/>
<div class="send_box">
       <label for="check">비밀글</label>
       <input type="checkbox" name="secretcheck" id="check" value="secret">
       <input type="button" value="전송" id="btnInsert">
       <input type="button" value="취소" id="btnCancel">
</div>
<input type="hidden" value="813" name="mserial" id="mserial">
<input type="hidden" value="10" name="hit" id="hit">
</form>
</body>
</html>