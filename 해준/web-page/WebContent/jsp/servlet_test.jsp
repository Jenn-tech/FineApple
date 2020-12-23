<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>servlet test</title>
</head>
<body>
<div id="servlet_test">
	<h3>Servlet Test(GET|POST)</h3>
	<div>
		이클립스의 콘솔창을 확인하세요.
	</div>
	
	<ul>
		<li><a href="test.do?mid=hong&phone=010-4199-1479"> GET Test </a></li>
	</ul>
	<form action="test.do" method="post" name="frm">
		<label>이름</label>
		<input type="text" name="name" id="name" value="정해준"/>
		<label>주소</label>
		<input type="text" name="address" id="address" value="서울 부근"/>
		<input type="submit" value="POST 타입 전송">
	</form>
	
	
</div>
</body>
</html>