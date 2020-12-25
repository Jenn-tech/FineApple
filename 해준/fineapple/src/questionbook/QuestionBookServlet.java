package questionbook;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//요청값을 받는 url정의?
@WebServlet(urlPatterns = "/question.do")
public class QuestionBookServlet extends HttpServlet {
	QuestionBookDao dao = new QuestionBookDao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String qa = req.getParameter("qa");
		
		RequestDispatcher rd = null;
		
		QuestionBookVo vo = new QuestionBookVo();
		
		switch(qa) {
		case "insert":
			FileUpload photoLoad = new FileUpload(req);
			vo = photoLoad.getQuestion();
			String msg = dao.insert(vo);
			System.out.println("dkdk");
			req.setAttribute("msg", msg);
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("/cs_center/insert.jsp?inc=result.jsp");
			rd.forward(req, resp);
			break;
		}
	}
}
