package questionbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FaqBookDao {

	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public FaqBookDao() {
		conn = new Application().getConn();
	}
	
	public List<FaqBookVo> select(String faqStr) {
		List<FaqBookVo> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM faqbook"
					+ " WHERE doctype LIKE ?";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+faqStr+"%");
			
			rs = ps.executeQuery();

			while(rs.next()) {
				FaqBookVo vo = new FaqBookVo();
				vo.setSubject(rs.getString("subject"));
				vo.setDoc(rs.getString("doc"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		finally {
			try {
				conn.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		return list;
	}
}
