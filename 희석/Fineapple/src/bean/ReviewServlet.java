package bean;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/review.do")
public class ReviewServlet extends HttpServlet {
	ReviewDao dao;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");
		
		int nowPage = 1;
		String findStr = "";
		String msg = "";
		
		RequestDispatcher rd = null;
		Page page = null;
		dao = new ReviewDao();
		ReviewVo vo = null;

		
		switch (job) {
		case "select":
			if(req.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(req.getParameter("nowPage"));
			}
			if(req.getParameter("findStr") != null){
	            findStr = req.getParameter("findStr");
	         }
			
			page = new Page();
			page.setNowPage(nowPage);
			page.setFindStr(findStr);
			List<ReviewVo> list = dao.review(page);
			
			req.setAttribute("list", list);   
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("select.jsp");
			rd.forward(req, resp);
			
			break;
			
		case "view":
			String id = req.getParameter("id");
			try {
				vo = dao.view(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("view.jsp");
			rd.forward(req, resp);
			
			break;
		}

		
	
	}
}
