package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;
import gbook.GuestBookVo;

public class ProductDao {
	Connection conn; 
	PreparedStatement ps; 
	ResultSet rs;
	public ProductDao() {
	}

		private static ProductDao instance = new ProductDao();
		
		public static ProductDao getInstance() {
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
		public List<ProductVo> selectAllProducts(){
			//최근 등록한 상품 먼저 출력하기
			String sql = "select * from product order by code desc";
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

		
		public List<ProductVo> select(String findStr) {
			List<ProductVo> list = new ArrayList<ProductVo>();
			try {
				
				conn = new Application().getConn();
				
				String sql = "SELECT * FROM product WHERE name LIKE ?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, "%" + findStr + "%");
				rs= ps.executeQuery();
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
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return list;
		}
		
		
		
		public String update(NoticeVo vo) {
			String msg = "방명록 내용을 수정하였습니다.";
			
			try {
				String sql = "update guestbook set doc=? where serial=? and pwd=?";
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getDoc());
				ps.setInt(2, vo.getSerial());
				ps.setString(3, vo.getPwd());
				
				int rowCnt = ps.executeUpdate();
				if(rowCnt < 1) {
					msg = "방명록 수정 중 오류발생";
				}
				
			} catch (Exception ex) {
				msg = ex.getMessage();
			}finally {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				return msg;
			}
		}		
		
		
		
		
		
}
