<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/UsersJoin/idCheckForm.css">
<link rel="stylesheet" href="../css/indexstyle.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<script
	src="https://s3.ap-northeast-2.amazonaws.com/materials.spartacodingclub.kr/xmas/snow.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="../js/userjoin/userjoin.js"></script>

</head>
<%

String user_id = request.getParameter("frm_id");
%>
<body class="body">
	<!-- header영역 -->
	<jsp:include page="../main/header.jsp" />

	<div class="div-container">

		<section class="section-one">
			<div class="section-welcome">
				<div class="welcome-img">
					<%if (user_id.equals("AAA")) {%>
					<img src="../images/UsersJoin/important.png">
					<% }else {%>
					<img src="../images/UsersJoin/smile.png">
					<% } %>
				</div>
				<h1 class="welcome-head"><%=user_id %></h1>
				<%if(user_id.equals("AAA")) { %>
				<h1 class="welcome-head">아이디가 중복입니다.</h1>
				
				<% }else { %>
				<h1 class="welcome-head">아이디를 사용 가능합니다.</h1>
				<% } %>
			</div>
		</section>
				<div class="frm-submit">
					<form action="index.jsp">
					<input type="submit" name="frmSubmit" value="돌아가기">
					</form>
				</div>
	</div>


	<footer>
		<jsp:include page="/main/footer.jsp"></jsp:include>
	</footer>


</body>
</html>