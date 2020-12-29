package questionbook;

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
		System.out.println("asd?");
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
		case "insert":
			FileUpload photoLoad = new FileUpload(req);
			vo = photoLoad.getQuestion();
			String msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_result.jsp");
			rd.forward(req, resp);
			System.out.println("insert 문제 없음");
			break;
			
		case "select": 
			if(req.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(req.getParameter("nowPage"));
			}
			if(req.getParameter("findStr") != null) {
				findStr = req.getParameter("findStr");
			}
			
			page = new CsPage();
			page.setNowPage(nowPage);
			page.setFindStr(findStr);
			List<InquiryBookVo> list = dao.select(page);
			
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			System.out.println("111");
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_board.jsp");
			rd.forward(req, resp);
			System.out.println("select 문제 없음");
			break;
		
		case "selectfaq" :
			String faqStr = "";
			List<FaqBookVo> faqlist;
			if(req.getParameter("faqStr") != null) {
				faqStr = req.getParameter("faqStr");
			}
			faqlist = new FaqBookDao().select(faqStr);
			
			System.out.println("faqStr");
			req.setAttribute("list", faqlist);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_FAQ.jsp");
			rd.forward(req, resp);
			break;
		}
	}
}
















