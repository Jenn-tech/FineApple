<%@page import="gb.GuestBookVo"%>
<%@page import="gb.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	GuestBookDao dao = new GuestBookDao();
	GuestBookVo vo = new GuestBookVo();

	vo.setMid(request.getParameter("mid"));
	vo.setPwd(request.getParameter("pwd"));
	vo.setDoc(request.getParameter("doc"));
	vo.setSerial(Integer.parseInt(request.getParameter("serial")));
	
	String msg = dao.update(vo);
	request.setAttribute("msg", msg);
%>

<script>
	var msg = '${msg}';
	alert(msg)
	location.href='../index.jsp?inc=./guestbook/select.jsp';
</script>



