package questionbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.NoticePage;

public class NoticeDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public NoticeDao() {
		conn = new Application().getConn();
	}
	
	public String insert(NoticeVo vo) {
		String msg = "정상적으로 입력 완료";
		try {
			String sql = "INSERT INTO noticebook "
					+ "(serial, name, pwd, subject, doc, mdate)"
					+ "VALUES(seq_noticebook.nextval, ?, ?, ?, ?, sysdate)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getSubject());
			ps.setString(4, vo.getDoc());
			
			int rowCnt = ps.executeUpdate();
			
			if(rowCnt < 1) {
				msg = "오류 발생";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return msg;
	}
	
	
	
	public List<NoticeVo> select(NoticePage page) {
		List<NoticeVo> list = new ArrayList<NoticeVo>();
		try {
			String findStr = page.getFindStr();
			page.setTotListSize(getTotListSize(findStr));
			page.pageCompute();
			
			String sql = "SELECT * FROM noticebook "
					+ "WHERE subject LIKE ? or doc LIKE ? or name LIKE ?";
			ps = conn.prepareStatement(sql);
			
			
			ps.setString(1, "%"+findStr+"%");
			ps.setString(2, "%"+findStr+"%");
			ps.setString(3, "%"+findStr+"%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				NoticeVo vo2 = new NoticeVo();
				vo2.setSerial(rs.getInt("serial"));
				vo2.setName(rs.getString("name"));
				vo2.setSubject(rs.getString("subject"));
				vo2.setDoc(rs.getString("doc"));
				list.add(vo2);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return list;
	}
	
	
	public int getTotListSize(String findStr) throws Exception {
		
		int totListSize = 0;
		
		String sql = "SELECT count(serial)cnt FROM noticebook "
				+ "WHERE subject LIKE ? or doc LIKE ? or name LIKE ?";

		ps = conn.prepareStatement(sql);
		ps.setString(1, "%"+findStr+"%");
		ps.setString(2, "%"+findStr+"%");
		ps.setString(3, "%"+findStr+"%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}
	
	public NoticeVo view(int serial) {
		NoticeVo viewVo = new NoticeVo();
		try {
			String sql = "SELECT * FROM noticebook "
					+ "WHERE serial = ?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, serial);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				viewVo.setSerial(rs.getInt("serial"));
				viewVo.setPwd(rs.getString("pwd"));
				viewVo.setName(rs.getString("name"));
				viewVo.setSubject(rs.getString("subject"));
				viewVo.setDoc(rs.getString("doc"));
				viewVo.setMdate(rs.getString("mdate"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return viewVo;
	}
}



