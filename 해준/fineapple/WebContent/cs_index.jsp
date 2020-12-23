<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
<head>
<title>FineApple Main</title>
<link rel="stylesheet" href="./css/indexstyle.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="cs_center" href="./css/cs_center.css">
<script src="https://code.jquery.com/jquery-3.5.1.js" 
		integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
		crossorigin="anonymous"></script>
		   <script src='./js/login.js'></script>
		
</head>

<body>
<%
request.setCharacterEncoding("utf-8");
// inc
String inc = "intro.jsp";
if(request.getParameter("inc") != null){
	 inc = request.getParameter("inc");
}
%>

	<!-- header영역 -->
	<%if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
	<jsp:include page="/header1.jsp"/>
	
	<%} else {%>
	
	<jsp:include page="/header2.jsp"/>
	
	<%} %>
	<%@include file="./cs_center/menu.jsp" %>
   <!-- footer영역 -->
   	<%@include file="footer.jsp" %>
   

    
</div>
<script>
logInOut()
</script>
</body>
</html>