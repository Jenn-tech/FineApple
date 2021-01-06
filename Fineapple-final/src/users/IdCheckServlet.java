package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;


@WebServlet("/UsersJoin/formCheck")
public class IdCheckServlet extends HttpServlet {
	  
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("중복 확인 검사창");

		String id = request.getParameter("frm_id");
		String id2 = request.getParameter("frm-check");
		out.println(id);
		response.sendRedirect("/Fineapple-final/UsersJoin/index.jsp");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		out.println("중복 확인 검사창");

		String id = request.getParameter("frm_id");
		String id2 = request.getParameter("frm-check");
		out.println(id);
		out.println(id2);
		System.out.println(id);
		RequestDispatcher dis = request.getRequestDispatcher("idCheckForm.jsp");
		dis.forward(request, response);
		
	}
  
}
