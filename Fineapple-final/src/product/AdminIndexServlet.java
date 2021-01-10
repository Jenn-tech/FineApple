package product;

import java.io.IOException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminIndexServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String admin = req.getParameter("admint");
		
		RequestDispatcher rd = null;
		
		int nowPage = 1;
		String findStr = "";
		ProductPage page = new ProductPage();
		ProductDao dao = new ProductDao();
		
		if(req.getParameter("nowPage") != null) {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		
		switch(admin) {
			case "productSelect": 
					Map<String, Object> map = dao.select(page);
					
				break;
		}
		
	}

	
		
}
