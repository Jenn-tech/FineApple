package product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/product.do")
public class ProductSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductPage page = null;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String search = request.getParameter("search");

		//멤버필드 설정
		ProductDao dao = new ProductDao();
		ProductVo vo;
		RequestDispatcher rd = null;
		String msg;
		String findStr = "";
		int nowPage = 1;
		
		switch(search) {
		case "select":
			if(request.getParameter("nowPage") != null) {
				nowPage = Integer.parseInt(request.getParameter("nowPage"));
			}
			if(request.getParameter("findStr") != null) {
				findStr = request.getParameter("findStr");
			}
			ProductPage productPage = new ProductPage();
			productPage.setNowPage(nowPage);
			productPage.setFindStr(findStr);
			
			List<ProductVo> list = dao.select(page);
			
			request.setAttribute("list", list);
			request.setAttribute("page", page);
			rd = request.getRequestDispatcher("product_list/select.jsp");
			rd.forward(request, response);
			break;
		}
	}

}
