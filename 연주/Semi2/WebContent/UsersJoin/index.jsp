<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<link rel="stylesheet" href="../css/UsersJoin/UsersJoin.css">
</head>
<body>
	<header>
		<jsp:include page="../header1.jsp"></jsp:include>
	</header>
	
		<div class="div-container">

			<section class="section-one">	
				<div class="section-welcome">
					<div class="welcome-img">
						<img src="../images/UsersJoin/img_welcome.png">
					</div>
					<h1 class="welcome-head">FINE APPLE에 오신 것을 환영합니다!</h1>
					<hr class="section-hr">
				</div>
			</section>

			<section class="section-two">
				<form action="" method="POST">

					<div class="frm-label">
						<label>아이디</label>
					</div>
					<div class="frm-input-id">
						<input type="text" name="frm-id" placeholder="아이디 입력(5~8자)">
						<input type="button" name="frm-check" value="중복확인">
					</div>

					<div class="frm-label">
						<label>이름</label>
					</div>
					<div class="frm-input-name">
						<input type="text" name="frm-name" placeholder="성명을 입력해주세요.">
					</div>

					
				</form>
			</section>
		</div>

		
	
	
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
	
</body>
</html>