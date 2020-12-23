package gb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class GuestBookDao {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs;

	public GuestBookDao() {
		conn = new Application().getConn();
	}

	public List<GuestBookVo> select(String findStr) {
		List<GuestBookVo> list = new ArrayList<>();
		try {
			String sql = "SELECT serial, mid, mdate, doc FROM guestbook WHERE mid LIKE ? or doc LIKE ?"
					+ "ORDER BY serial desc";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+findStr+"%");
			ps.setString(2, "%"+findStr+"%");

			rs = ps.executeQuery();
			while(rs.next()) {
				GuestBookVo gb = new GuestBookVo(); 
				gb.setSerial(rs.getInt("serial"));
				gb.setMid(rs.getString("mid"));
				gb.setMdate(rs.getString("mdate"));
				gb.setDoc(rs.getString("doc"));

				list.add(gb);
			}
		} catch (Exception ex) {
			ex.getStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.getStackTrace();
			}
			return list;
		}
	}
	
	public String insert(GuestBookVo vo) {
		String msg = "방명록이 작성되었습니다.";
		try {
			String sql = "INSERT INTO guestbook(serial, mid, mdate, doc, pwd) "
					+ "VALUES(SEQ_QUESTBOOK.nextval, ?, sysdate, ?, ?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getDoc());
			ps.setString(3, vo.getPwd());
			
			int rowCnt = ps.executeUpdate(); // insert된 행 수가 반환된다.
			if(rowCnt < 1) {
				msg = "방명록 입력 중 오류가 발생했습니다.";
			}

		} catch (Exception e) {
			e.printStackTrace();
			msg = e.getMessage();
		}
		finally {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			return msg;
		}
	}
	
	public String update(GuestBookVo vo) {
			String msg = "방명록 수정이 완료되었습니다.";
			
			try {
				
				String sql = "UPDATE guestbook SET doc= ? WHERE serial= ? and pwd= ? ";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getDoc());
				ps.setInt(2, vo.getSerial());
				ps.setString(3, vo.getPwd());
				
				int rowCnt = ps.executeUpdate();
				if(rowCnt < 1) {
					msg = "방명록 수정 중 오류 발생";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				msg = e.getMessage();
			}
			finally {
				try {
					conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				return msg;
			}
	}
	
	public String delete(GuestBookVo vo) {
		String msg = "삭제가 완료되었습니다.";
		try {
			String sql = "DELETE FROM guestbook WHERE serial = ? and pwd = ?";
			conn.setAutoCommit(false);
			ps = conn.prepareStatement(sql);
			ps.setInt(1, vo.getSerial());
			ps.setString(2, vo.getPwd());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt < 1) {
				msg = "방명록 삭제 중 오류 발생";
			}
			else {
				conn.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			return msg;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
