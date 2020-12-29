<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="../css/header.css">
		<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
		<link rel="stylesheet" href="../css/UsersJoin/agree.css">
		<link rel="stylesheet" href="../css/indexstyle.css">

		<script src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
		<script src="../js/userjoin/userjoin.js"></script>

		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Nanum+Gothic&display=swap"
			rel="stylesheet">
	</head>

	<body class="body">
		<header>
			<jsp:include page="/main/header1.jsp"></jsp:include>
		</header>

		<div class="div-container">

			<section class="section-one">
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/agree.png">
					</div>
					<h1 class="welcome-head">서비스약관에 동의해주세요.</h1>
					<hr class="section-hr">
				</div>
			</section>

			<div class="agree-align">
				<div class="terms-box">
					<div>
						<input id="check-agree" type="checkbox">
						<label for="check-agree" class="check-agree-label">모두 동의합니다.</label>
					</div>
				</div>

				<div class="agree-every">
					전체동의는 필수 및 선택정보에 대한 동의도 포함되어 있으며, 개별적으로도 동의를 선택하실 수 있습니다. 선택항목에 대한 동의를 거부하시는 경우에도 서비스는 이용이 가능합니다.
				</div>

				<div class="terms-box">
					<div>
						<input id="check-agree-one" type="checkbox">
						<label for="check-agree-one">만 14세 이상입니다.</label>
					</div>
				</div>

				<div class="terms-box terms-box-font">
					<div>
						<input id="check-agree-two" type="checkbox">
						<label for="check-agree-two">[필수] FineApple계정 약관</label>
						<button class="btnLink" id="agree-id"><img src="../images/UsersJoin/arrow.png"></button>
					</div>
				</div>

				<div class="terms-box terms-box-font" >
					<div>
						<input id="check-agree-three" type="checkbox">
						<label for="check-agree-three" >[필수] 개인정보 수집 및 이용 동의</label>
						<button class="btnLink" id="agree-service"><img src="../images/UsersJoin/arrow.png"></button>
					</div>
				</div>

				<div class="terms-box terms-box-font">
					<div>
						<input id="check-agree-four" type="checkbox">
						<label for="check-agree-four">
							[선택] 위치정보 수집 및 이용 동의</label>
						<button class="btnLink" id="agree-location"><img src="../images/UsersJoin/arrow.png"></button>
					</div>
				</div>

				<div class="terms-box terms-box-font">
					<div>
						<input id="check-agree-five" type="checkbox">
						<label for="check-agree-five"">[선택]FineApple 광고메시지 수신</label>
						<button class="btnLink" id="agree-adv"><img src="../images/UsersJoin/arrow.png"></button>
					</div>
				</div>

				<form action="index.jsp">
					<div class="button-next">
						<button class="agree-btn">취소</button>
						<button class="agree-btn">다음</button>
					</div>
				</form>
			</div>

		</div>


		<footer>
			<jsp:include page="/main/footer.jsp"></jsp:include>
		</footer>


		<script>
			member();
		</script>
	</body>

	</html>