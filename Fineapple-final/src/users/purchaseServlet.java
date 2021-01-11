package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/purchase/purchase.do")
public class purchaseServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
	
		PrintWriter out = response.getWriter();
		System.out.println("doget");
		out.println("하이");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/purchase/index.jsp");
		dispatcher.forward(request, response);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
	
		PrintWriter out = response.getWriter();
		System.out.println("dopost");
		HttpSession session = request.getSession();
		String member_mid = (String) session.getAttribute("member_mid");
		System.out.println("member_mid : "+ member_mid);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/purchase/index.jsp");
		dispatcher.forward(request, response);
	}
}
