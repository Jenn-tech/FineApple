package questionbook;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.NoticePage;

@WebServlet(urlPatterns = "/notice.do")
public class NoticeBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String notice = req.getParameter("notice");

		//멤버필드 설정
		NoticeDao dao = new NoticeDao();
		NoticeVo vo;
		RequestDispatcher rd = null;
		String msg;
		String findStr = "";
		int nowPage = 1;
		
		switch(notice) {
		
		case "insert":
			vo = new NoticeVo();
			vo.setName(req.getParameter("name"));
			vo.setPwd(req.getParameter("pwd"));
			vo.setSubject(req.getParameter("subject"));
			vo.setDoc(req.getParameter("doc"));
			
			msg = new NoticeDao().insert(vo);
			
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_result.jsp");
			rd.forward(req, resp);
			break;
			
		case "select":
			if(req.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(req.getParameter("nowPage"));
			}
			if(req.getParameter("findStr") != null) {
				findStr = req.getParameter("findStr");
			}
			NoticePage noticePage = new NoticePage();
			noticePage.setNowPage(nowPage);
			noticePage.setFindStr(findStr);
			
			List<NoticeVo> list = dao.select(noticePage);
			
			req.setAttribute("list", list);
			req.setAttribute("page", noticePage);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_notice.jsp");
			rd.forward(req, resp);
			break;
		case "view":
			int serial = 0;
			if(req.getParameter("serial") != null) {
				serial = Integer.parseInt(req.getParameter("serial"));
			}
			
			NoticeVo viewVo = new NoticeDao().view(serial);
			
			req.setAttribute("viewVo", viewVo);
			rd = req.getRequestDispatcher("cs_func_page.jsp?func=./cs_center/cs_view.jsp");
			rd.forward(req, resp);
			break;
		}
	}

	
}
