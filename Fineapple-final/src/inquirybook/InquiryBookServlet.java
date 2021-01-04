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


//?öîÏ≤?Í∞íÏùÑ Î∞õÎäî url?†ï?ùò?
@WebServlet(urlPatterns = "/inquiry.do")
public class InquiryBookServlet extends HttpServlet {
	InquiryBookDao dao = new InquiryBookDao();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");
		System.out.println(job);
		RequestDispatcher rd = null;
		
		//Page Ï¥àÍ∏∞ Í∞? ?Ñ§?†ï
		int nowPage = 1;
		String findStr = "";
		
		//Î≥??àò ?Ñ†?ñ∏
		InquiryBookVo vo = new InquiryBookVo();
		CsPage page;
		
		//btn Î≥? Í∏∞Îä• ?Ñ†?ñ∏
		switch(job) {
		case "insert":
			FileUpload photoLoad = new FileUpload(req);
			vo = photoLoad.getQuestion();
			String msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("./cs/cs_func_page.jsp?func=../cs_center/cs_result.jsp");
			rd.forward(req, resp);
			System.out.println("insert Î¨∏Ï†ú ?óÜ?ùå");
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
			System.out.println("select Î¨∏Ï†ú ?óÜ?ùå");
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
















