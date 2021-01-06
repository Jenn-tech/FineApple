package users;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class BoardDao {
	SqlSession sqlSession;
	
	public BoardDao() {
		
		sqlSession = BoardFactory.getFactory().openSession(); 
		
	}
	
	public int idCheck(String id) {
		sqlSession = BoardFactory.getFactory().openSession();
		
		// mapper에게
		int result = sqlSession.selectOne("board.CheckId", id);
		sqlSession.close();
		
		// 결과는 1 아니면 0
		return result;
	}
	
}
