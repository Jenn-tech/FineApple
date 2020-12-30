package notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class NoticeDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public NoticeDao() {
		conn = new Application().getConn();
	
	}
	public int getNext() {
		String sql = "select notice_subject from notice ";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) +1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public List<NoticeVo> select(String findStr){
		String sql = "select notice_no, notice_subject, notice_doc, notice_date, notice_hit from notice where notice_subject like ? order by notice_no desc";
		List<NoticeVo> list = new ArrayList<NoticeVo>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				NoticeVo notice = new NoticeVo();
				notice.setNoticeNo(rs.getInt(1));
				notice.setNoticeSubject(rs.getString(2));
				notice.setNoticeDoc(rs.getString(3));
				notice.setNoticeDate(rs.getString(4));
				notice.setNoticeHit(rs.getInt(5));
				
				list.add(notice);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}
}


