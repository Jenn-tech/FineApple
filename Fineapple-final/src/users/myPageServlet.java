package users;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Application;

/**
 * Servlet implementation class myPageServlet
 */
@WebServlet("/mypage/mypage")
public class myPageServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");
	request.setCharacterEncoding("UTF-8");
	PrintWriter out = response.getWriter();


	
	// song 

	/* 커넥션 연결 */

	BoardDao dao = new BoardDao();


	if(dao.sqlSession == null) {
		System.out.println("연결 중 오류 ..");

	}else {
		System.out.println("연결 성공");

		/* select */

		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("member_mid");
		out.println(mid);
		
		/* 콘솔 출력 
		List<MemberVo> listUsers = dao.sqlSession.selectList("board.users");
		for(MemberVo vo: listUsers) {
			System.out.println(vo);
			
		}*/
		MemberVo vo = new MemberVo();
	
		

		
		String a = "hello";
		RequestDispatcher dis = request.getRequestDispatcher("/mypage/mypage.jsp");
		dis.forward(request, response);

	}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();


		
		// song 

		/* 커넥션 연결 */

		BoardDao dao = new BoardDao();


		if(dao.sqlSession == null) {
			System.out.println("연결 중 오류 ..");

		}else {
			System.out.println("연결 성공");

			/* select */

			HttpSession session = request.getSession();
			String mid = (String) session.getAttribute("member_mid");
			out.println(mid);
			
			/* 콘솔 출력 
			List<MemberVo> listUsers = dao.sqlSession.selectList("board.users");
			for(MemberVo vo: listUsers) {
				System.out.println(vo);
				
			}*/
			MemberVo vo = new MemberVo();
		
			

			
			String a = "hello";
			RequestDispatcher dis = request.getRequestDispatcher("/mypage/mypage.jsp");
			dis.forward(request, response);

		}
	}
}

