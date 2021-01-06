package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IdCheckAction extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id").trim();
		
		int isExist = new BoardDao().idCheck(id);
		
		PrintWriter out = resp.getWriter();
		out.println(isExist);
		out.flush();
		out.close();
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String id = req.getParameter("id").trim();
		
		int isExist = new BoardDao().idCheck(id);
		
		PrintWriter out = resp.getWriter();
		out.println(isExist);
		out.flush();
		out.close();
	}
}
