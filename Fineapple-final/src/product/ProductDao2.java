package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class ProductDao2 {
	Connection conn; 
	PreparedStatement ps; 
	ResultSet rs;
	public ProductDao2() {
	}

		private static ProductDao2 instance = new ProductDao2();
		
		public static ProductDao2 getInstance() {
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
		public List<ProductVo> selectPricelist(){
			//낮은 가격 순
			String sql = "select * from product order by price asc";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
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
		
		
		public List<ProductVo> selectPricelistdesc(){
			//높은가격 순
			String sql = "select * from product order by price desc";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			
			try {
				conn = new Application().getConn();
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();
				
				while(rs.next()) {
					ProductVo vo = new ProductVo();
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
