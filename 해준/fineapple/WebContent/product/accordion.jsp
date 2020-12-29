<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>product page</title>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

.head_container {
	min-height: 350px;
	text-align: center;
	padding-top: 70px;
	background-color: #333333;
	color: white;
}

.head_container>img {
	display: inline-block;
	width: 10%;
	height: 10%;
	margin-bottom: 10px;
}

#search_box {
	margin-top: 10px;
	width: 25%;
	height: 2rem;
	border-radius: 9px;
	border: 1px solid #333333;
}

#submit_box {
	height: 2rem;
	background-color: white;
	border-radius: 4px;
	border: 1px solid #333333;
}

.footer_box {
	height: 200px;
	background-color: #f2f2f2;
	text-align: center;
}

#customer_box {
	margin: 0 auto;
	padding: 50px 0 50px 0;
	text-align: center;
	width: 50%;
} 
</style>
</head>
<body>
	<header class="head_container">
		<img alt=""
			src="https://t1.daumcdn.net/cfile/tistory/1105C6384DE6EB7635?original">
		<h2>어떻게 도와드릴까요?</h2>
		<form action="">
			<input type="text" placeholder="문제를 설명해주세요!" id="search_box">
			<input type="button" value="검색" id="submit_box">
		</form>
	</header>
	<main>
		<div id="customer_box">
			<h4>프로그램 실행이 안돼요.</h4>
			<div>
				<p>안되면 그냥 컴퓨터를 끄세요!</p>
				<br>
				<p>오늘 하루는 쉬는게 좋겠어요..</p>
			</div>
			<h4>진짜 안돼요..</h4>
			<div>
				<p>그럼 진짜 하지말라고요.. 나가서 노세요 그냥..</p>
			</div>
			<h4>아무말이나 적어봅니다.</h4>
			<div>
				<p>이건 그냥 틀을 잡는거거든요..</p>
			</div>
			<h4>이해 부탁드려요..</h4>
			<div>
				<p>이게 맞는건지..</p>
			</div>
		</div>
	</main>

	<footer class="footer_box">
		<h2>footer입니다...</h2>
	</footer>

	<script type="text/javascript">
		$(function() {
			$('#customer_box').accordion();
		})
	</script>
</body>
</html>