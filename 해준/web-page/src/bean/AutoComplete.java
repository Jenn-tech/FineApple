package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AutoComplete {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	public AutoComplete() {
		conn = new Application().getConn();
	}
	
	public String getData() {
		StringBuffer sb = new StringBuffer();
		try {
			String sql = "select first_name from hr.employees";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();//CRUD = Create Read Update Delete
			sb.append("[");
			rs.next();
			sb.append("'"+rs.getString("first_name")+"'");
			while(rs.next()) {
				sb.append(", '"+rs.getString("first_name")+"'");
			}
			sb.append("]");
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		finally {
			String temp = sb.toString();
			temp = temp.replaceAll("'","\"");
			return temp;
		}
		
	}
}