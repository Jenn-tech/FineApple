<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
%>


<jsp:useBean id="dao" class="review.ReviewDao3" />
<jsp:useBean id="vo" class="review.ReviewVo" />
<jsp:setProperty property="*" name="vo" />   <!-- 폼테그에 있는 모든 정보들이 vo로 들어간다. -->

<%
   String msg = dao.insert(vo);
   request.setAttribute("msg", msg);   // request 값이 script의 msg로 이동.


%>
<script>
   var msg = '${msg}';
   alert(msg);
   location.href='./review2/select.jsp';
</script>