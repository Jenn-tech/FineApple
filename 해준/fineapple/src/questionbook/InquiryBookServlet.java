package questionbook;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//요청값을 받는 url정의?
@WebServlet(urlPatterns = "/inquiry.do")
public class InquiryBookServlet extends HttpServlet {
	InquiryBookDao dao = new InquiryBookDao();
	
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
		
		InquiryBookVo vo = new InquiryBookVo();
		
		switch(qa) {
		
		case "insert":
			System.out.println("asd");
			FileUpload photoLoad = new FileUpload(req);
			vo = photoLoad.getQuestion();
			String msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("vo", vo);
			System.out.println("asd");
			rd = req.getRequestDispatcher("cs_center\\cs_func_page.jsp");
			System.out.println("as11111111");
			rd.forward(req, resp);
			break;
		case "view": 
			
			
			
			break;
		}
	}
}
