
package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;

public class MemberDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public MemberDao() {
		conn = new Application().getConn();
	
	}
	
	public boolean login(String mid, String pwd) {
		boolean b = false; //기본 : 로그인되지 않았어
		try {
			String sql = "select count(mid) cnt from members where mid=? and pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mid); //index는 1부터 시작
			ps.setString(2, pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if (cnt >= 1) { //정확히는 1
					b = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return b;
		}
	}
	
	
	public String findId(String name, String phone) {
		String mid = null;
		
		try {
			String sql = "select mid from members where name=? and phone=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, phone);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				mid = rs.getString("mid");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mid;
	}
	
	public String findPw(String mid, String phone) {
		String pwd = null;
		try {
			String sql = "select pwd from members where mid=? and phone=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mid);
			ps.setString(2, phone);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				pwd = rs.getString("pwd");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pwd;
	}
	
}
