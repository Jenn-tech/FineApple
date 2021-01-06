<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id = "dao" class="bean.MemberDao"/>
    <jsp:useBean id = "vo" class="bean.MemberVo"/>

    <jsp:setProperty property="*" name = "vo"/>
<%

String mid = request.getParameter("member_mid");	//form에 있는값 (id아닌 name값),
String pwd = request.getParameter("member_pwd");   //id값은 server로 넘어가지않음 name에 해당하는 value값이 넘어갑


boolean b = dao.login(vo.getMember_mid(), vo.getMember_pwd());

if(b){
	//로그인 성공
	session.setAttribute("member_mid", vo.getMember_mid());
	response.sendRedirect("../main/index.jsp");
}else{
	//로그인 실패
%>
<script>
	alert('로그인에 실패하였습니다');
	
	location.href='./loginfo.jsp';
</script>
<% } %>

