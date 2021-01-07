package mypage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;


public class CartDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public CartDao() {
		
	}

	private static CartDao instance = new CartDao();
	
	public static CartDao getInstance() {
		return instance;
	}

	public int getTotListSize(String findStr) throws Exception {
		int totListSize = 0;
		String sql = "SELECT count(serial)cnt FROM product"
				+ " WHERE code LIKE ? or name  LIKE ? ";
		
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%" + findStr +"%");
		ps.setString(2, "%" + findStr +"%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}
	
	
	//c Read u d
	public List<CartVo> selectPricelist(){
		//낮은 가격 순
		String sql = "select * from product order by price asc";
		List<CartVo> list = new ArrayList<CartVo>();
		
		
		try {
			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				CartVo vo = new CartVo();
				vo.setCode(rs.getInt("code"));
				vo.setName(rs.getString("name"));
				vo.setPrice(rs.getInt("price"));
				vo.setPictureUrl(rs.getString("PICTUREURL"));
				vo.setDescription(rs.getString("DESCRIPTION"));
				vo.setLinkUrl(rs.getString("linkurl"));
				list.add(vo);
			}
		
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
		}
		return list;
	}
	
	
	public List<CartVo> selectPricelistdesc(){
		//높은가격 순
		String sql = "select * from product order by price desc";
		List<CartVo> list = new ArrayList<CartVo>();
		
		
		try {
			conn = new Application().getConn();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				CartVo vo = new CartVo();
				vo.setCode(rs.getInt("code"));
				vo.setName(rs.getString("name"));
				vo.setPrice(rs.getInt("price"));
				vo.setPictureUrl(rs.getString("PICTUREURL"));
				vo.setDescription(rs.getString("DESCRIPTION"));
				vo.setLinkUrl(rs.getString("linkurl"));
				list.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Application.close(conn, ps, rs);
		}
		System.out.println("list에 add완료");
		return list;
	}

}
