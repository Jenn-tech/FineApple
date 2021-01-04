package inquirybook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import bean.CsPage;

public class InquiryBookDao {
	Connection conn; // database?ùò ?ó∞Í≤? ?†ïÎ≥?
	PreparedStatement ps; //Î¨∏Ïûê?ó¥Î°? ?êò?ñ¥ ?ûà?äî ?ã¥?äî ?ù∏?Ñ∞?éò?ù¥?ä§
	ResultSet rs; //selectÎ¨∏Ïùò ?ã§?ñâ Í≤∞Í≥º
	
	public InquiryBookDao() {
		conn = new Application().getConn();
	}
	
	public int getTotListSize(String findStr) throws Exception {
		int totListSize = 0;
		String sql = "SELECT count(serial)cnt FROM inquirybook"
				+ " WHERE mid LIKE ? or doc LIKE ? or subject LIKE ?";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%" + findStr +"%");
		ps.setString(2, "%" + findStr +"%");
		ps.setString(3, "%" + findStr +"%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}
	
	
	public String insert(InquiryBookVo vo) {
		String msg = "?Ñ±Í≥µÏ†Å?úºÎ°? ?†ë?àò?êò?óà?äµ?ãà?ã§.";
		try {
			String sql = "INSERT INTO inquirybook"
					+ "(serial, mid, pwd, subject, doc, mdate)"
					+ " VALUES(seq_inquirybook.nextval, ?, ?, ?, ?, sysdate)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getSubject());
			ps.setString(4, vo.getDoc());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt < 1) {
				msg = "Î¨∏Ï†ú Î∞úÏÉù.";
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
	
	public List<InquiryBookVo> select(CsPage page) {
		List<InquiryBookVo> list = new ArrayList<>();
		try {
			
			//?ÑòÍ≤®Î∞õ?? Í≤??Éâ?ñ¥Î•? ?Ç¨?ö©?ïò?ó¨ totListSizeÍ∞íÏùÑ Íµ¨Ìï¥?ïº?ïú?ã§.
			String findStr = page.getFindStr();
			page.setTotListSize(getTotListSize(findStr));
			page.pageCompute();
			
			String sql = "SELECT * FROM inquirybook "
					+ "WHERE mid LIKE ? or doc LIKE ? or subject LIKE ?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr +"%");
			ps.setString(2, "%" + findStr +"%");
			ps.setString(3, "%" + findStr +"%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				InquiryBookVo vo = new InquiryBookVo();
				vo.setSerial(rs.getString("serial"));
				vo.setMid(rs.getString("mid"));
				vo.setPwd(rs.getString("pwd"));
				vo.setSubject(rs.getString("subject"));
				vo.setDoc(rs.getString("doc"));
				vo.setMdate(rs.getString("mdate"));
				vo.setHit(rs.getString("hit"));
				vo.setPserial(rs.getString("pserial"));
				vo.setMserial(rs.getString("mserial"));
				vo.setSecretCheck(rs.getString("secretcheck"));
				list.add(vo);
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
}
