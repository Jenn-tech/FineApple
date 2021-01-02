package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class ProductDao {
	public ProductDao() {
	}

		private static ProductDao instance = new ProductDao();
		
		public static ProductDao getInstance() {
			return instance;
		}

		//c Read u d
		public List<ProductVo> selectAllProducts(){
			//최근 등록한 상품 먼저 출력하기
			String sql = "select * from product order by code desc";
			List<ProductVo> list = new ArrayList<ProductVo>();
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = new Application().getConn();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
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
				Application.close(conn, pstmt, rs);
			}
			return list;
		}
}
