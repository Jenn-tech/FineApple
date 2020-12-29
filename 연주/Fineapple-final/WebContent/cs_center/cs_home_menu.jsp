<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="cs_home_container">
		<header class="cs_home_title">
			<h2>어떻게 도와드릴까요?</h2>
				<form action="">
				       <input type="text" placeholder="문제를 설명해주세요!" id="search_box">
				       <input type="button" value="검색" id="submit_box">
				</form>
		</header>
		
		<section class="cs_home_content">
			<main class="cs_home_content_menu">
			    <ul>
					<li><a href="cs_home.jsp?inc=cs_notice.jsp"><img alt="" src="../images/Map.png">공지사항</a></li>
					<li><a href="cs_home.jsp?inc=cs_insert.jsp"><img alt="" src="../images/QA.png">Q&A</a></li>
					<li><a href="cs_home.jsp?inc=cs_FAQ.jsp"><img alt=""src="../images/FAQ.png">FAQ</a></li>
		       		<li><a href="cs_home.jsp?inc=cs_board.jsp"><img alt="" src="../images/Map.png">게시판</a></li>
		       		<li><a href="cs_home.jsp?inc=cs_map.jsp"><img alt=""src="../images/Map.png">찾아오시는 길</a></li>
		    	</ul>
			</main>
		</section>
	</div>
</body>
</html>