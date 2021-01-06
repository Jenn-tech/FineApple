package inquirybook;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CsPage;


//요청값을 받는 url정의?
@WebServlet(urlPatterns = "/inquiry.do")
public class FaqBookServlet extends HttpServlet {
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
		
		//Page 초기 값 설정
		int nowPage = 1;
		String findStr = "";
		
		//변수 선언
		InquiryBookVo vo = new InquiryBookVo();
		CsPage page;
		
		//btn 별 기능 선언
		switch(qa) {
		case "selectfaq":
			
			String faqStr = "";
			List<FaqBookVo> faqlist;
			if(req.getParameter("faqStr") != null) {
				faqStr = req.getParameter(faqStr);
			}
			
			faqlist = new FaqBookDao().select(faqStr);
			
			req.setAttribute("list", faqlist);
			rd = req.getRequestDispatcher("");
			rd.forward(req, resp);
			break;
		}
	}
}
















