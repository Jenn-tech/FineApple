<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 1:1 Q&A</title>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	String func = "inquiry_form.jsp";
	if(request.getParameter("func") != null) {
		func = request.getParameter("func");
	}
%>
	<div class="cs_insert_container">
		<header class="cs_insert_title">
			<h2>CS_CENTER</h2>		
		</header>
		<section class="cs_insert_content">
			<nav>
				<h3>Quick menu</h3>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
				<ul>
					<h4>마이페이지</h4>
					<li><a>고객 정보 수정</a></li>
					<li><a>장바구니</a></li>
					<li><a>찜목록</a></li>
					<li><a>쿠폰함</a></li>
					<li><a>문의 내역</a></li>
				</ul>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
				<ul>
					<h4>제품</h4>
					<li><a>핸드폰</a></li>
					<li><a>태블릿</a></li>
					<li><a>노트북</a></li>
					<li><a>스마트워치</a></li>
					<li><a>엑세서리</a></li>
				</ul>
			</nav>
		
			<main class="cs_insert_inquiry">
			<jsp:include page="<%=func %>"></jsp:include>
			</main>
			
			<aside class="cs_insert_sidebanner">
			</aside>
		</section>
	</div>
</body>
</html>