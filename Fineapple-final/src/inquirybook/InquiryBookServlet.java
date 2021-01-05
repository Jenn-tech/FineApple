package inquirybook;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CsPage;


@WebServlet(urlPatterns = "/inquiry.do")
public class InquiryBookServlet extends HttpServlet {
	String url = "/cs/cs_func_page.jsp?func=../cs_center/";
	InquiryBookDao dao;
	CsPage page;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String job = req.getParameter("job");

		int nowPage = 1;
		String findStr = "";
		String msg = "";
		int serial = 0;
		RequestDispatcher rd = null;
		dao = new InquiryBookDao();
		page = new CsPage();
		InquiryBookVo vo;
		FileUpload fu;
		
		
		
		if(req.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		if(req.getParameter("findStr") != null) {
			findStr = req.getParameter("findStr");
		}
		
		page.setNowPage(nowPage);
		page.setFindStr(findStr);
		
		switch(job) {
		case "insert": 
			
			break;
		
		case "insertR":
			fu = new FileUpload(req);
			vo = new InquiryBookVo(); 
			vo = fu.getInquiryBookVo('i');
			page = fu.getPage();
			msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			System.out.println(msg);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_board.jsp");
			rd.forward(req, resp);
			break;
		case "select":
			Map<String, Object> map = dao.select(page);
			
			List<InquiryBookVo> list = (List<InquiryBookVo>) map.get("list");
			page = (CsPage) map.get("page");
			
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_board.jsp");
			rd.forward(req, resp);

			break;
		case "view" :
			serial = Integer.parseInt(req.getParameter("serial"));
			vo = new InquiryBookVo(); 
			vo = dao.view(serial);
			req.setAttribute("vo", vo);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_view.jsp");
			System.out.println("21312213321");
			rd.forward(req, resp);
			break;
			
		case "update": 
			serial = Integer.parseInt(req.getParameter("serial"));
			vo = new InquiryBookVo(); 
			vo = dao.update(serial);
			
			req.setAttribute("vo", vo);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("cs_func_page.jsp?junc=./cs_center/cs_update.jsp");
			rd.forward(req, resp);
			System.out.println("업데이트 화면 전환 완료");
			break;
		}
	}
}

















