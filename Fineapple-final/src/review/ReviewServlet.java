package review;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileUpload;

@WebServlet("/review.do") 
public class ReviewServlet extends HttpServlet{
	ReviewDao dao;

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
	
		RequestDispatcher rd = null;
		dao = new ReviewDao();
		ReviewPage page = null;
		ReviewVo vo = null;
		
		switch(job) {
		case "select":
			if(req.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(req.getParameter("nowPage"));
			}
			if(req.getParameter("findStr") != null) {
				findStr = req.getParameter("findStr");
			}
			
			page = new ReviewPage();
			page.setNowPage(nowPage);
			page.setFindStr(findStr);
			List<ReviewVo> list = dao.select(page);
			
			req.setAttribute("list", list);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("/review3/review.jsp");
			rd.forward(req, resp);
			break;
			
		case "insert":
			ReviewFileUpload fu = new ReviewFileUpload(req);
			vo = fu.getReview1();
			page = fu.getPage();
			
			msg = dao.insert(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("/review3/result.jsp");
			rd.forward(req, resp);
			
			break;
			
		case "view":
			String temp = req.getParameter("reviewSerial");
			int temp1 = Integer.parseInt(temp);
			int reviewSerial = temp1;
			vo = dao.view(reviewSerial);
			
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("/review3/view.jsp");
			rd.forward(req, resp);
			
			break;
			
			
		case "delete":
			vo = new ReviewVo();
			//vo.setMid(req.getParameter("mid"));
			//vo.setPwd(req.getParameter("pwd"));
			vo.setDelFile(req.getParameter("delFile"));
			
			String temp11 = req.getParameter("reviewSerial");
			int temp22 = Integer.parseInt(temp11);
			vo.setReviewSerial(temp22);
			
			msg = dao.delete(vo);
			
			page = new ReviewPage();
			page.setFindStr(req.getParameter("findStr"));
			String temp2 = req.getParameter("nowPage");
			int temp3 = Integer.parseInt(temp2);
			page.setNowPage(temp3);
			req.setAttribute("page", page);
			req.setAttribute("msg", msg);
			
			rd = req.getRequestDispatcher("../reivew3/result.jsp");
			rd.forward(req, resp);
			break;
			
		case "modify":
			int reviewSerial2 = Integer.parseInt(req.getParameter("reviewSerial"));
			vo = dao.view(reviewSerial2);
			
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("review3/update.jsp");
			rd.forward(req, resp);
			
			break;
			
		case "update":
			ReviewFileUpload fu2 = new ReviewFileUpload(req);
			vo = fu2.getReview();
			page = fu2.getPage();
			msg = dao.update(vo);
			
			req.setAttribute("msg", msg);
			req.setAttribute("page", page);
			rd = req.getRequestDispatcher("review3/result.jsp");
			rd.forward(req, resp);
			
			break;
			
		case "product":
			int reviewSerial3 = Integer.parseInt(req.getParameter("reviewSerial"));
			vo = dao.view(reviewSerial3);
			
			req.setAttribute("vo", vo);
			rd = req.getRequestDispatcher("product/phone1.jsp");
			rd.forward(req, resp);
			break;
			
		}
		
	}
	
}
