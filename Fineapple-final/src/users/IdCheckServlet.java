package users;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.SendResult;


@WebServlet("/UsersJoin/formCheck")
public class IdCheckServlet extends HttpServlet {
	  
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();


		String id = request.getParameter("frm_id");
		// song 
		
		out.println(id);

		/* 커넥션 연결 */
		
		BoardDao dao = new BoardDao();

		if(dao.sqlSession == null) {
			System.out.println("연결 중 오류 ..");

		}else {
			System.out.println("연결 성공");
			
			/* select */
			MemberVo vo = new MemberVo();
			
			vo.setMid(id);
			
			MemberVo vo1 = new MemberVo();
			
			
			String getMemberID = vo.getMid();
			request.setAttribute("getID", getMemberID);
			
			
			/* 콘솔 출력 */
			System.out.println(vo.getMid());
			
			
			
			int cnt = dao.sqlSession.selectOne("board.CheckId", id);
			
			
			
			if( cnt > 0 ) {
				
				System.out.println("중복 아이디 : " + cnt);
				dao.sqlSession.commit();

			}else {
				System.out.println("select 오류");
			}
		
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("idCheckForm.jsp");
		dis.forward(request, response);
		
	}
  
}
