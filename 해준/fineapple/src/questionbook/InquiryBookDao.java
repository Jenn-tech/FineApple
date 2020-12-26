package questionbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.sun.net.httpserver.Authenticator.Result;

public class InquiryBookDao {
	Connection conn; // database의 연결 정보
	PreparedStatement ps; //문자열로 되어 있는 담는 인터페이스
	Result rs; //select문의 실행 결과
	
	public InquiryBookDao() {
		conn = new Application().getConn();
	}
	
	
	public String insert(InquiryBookVo vo) {
		System.out.println("ehosi");
		String msg = "성공적으로 접수되었습니다.";
		try {
			String sql = "INSERT INTO inquirybook"
					+ "(serial, mid, pwd, subject, doc, mdate, secretcheck)"
					+ " VALUES(seq_inquirybook.nextval, ?, ?, ?, ?, sysdate, ?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getSubject());
			ps.setString(4, vo.getDoc());
			ps.setString(5, vo.getSecretCheck());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt < 1) {
				msg = "문제 발생.";
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
		return msg;
	}	
	
}
