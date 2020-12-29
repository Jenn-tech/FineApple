package review;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;
import bean.Page;


public class ReviewDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public ReviewDao() {
		conn = new Application().getConn();
	}
	
	public int getTotListSize(String findStr) throws Exception{
		int totListSize = 0;
		String sql = "select count(id) cnt from review where id like? or proname like ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, "%" + findStr + "%");
		ps.setString(2, "%" + findStr + "%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
	}  
	
	public List<ReviewVo> select(String findStr){
		List<ReviewVo> list = new ArrayList<ReviewVo>();
		
		try {
			String sql = " select * from review where id like ? or doc like ? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + findStr + "%");
			ps.setString(2, "%" + findStr + "%");
			
			rs = ps.executeQuery();
			while(rs.next()) {
				ReviewVo vo = new ReviewVo();
				vo.setId(rs.getString("id"));
				vo.setProname(rs.getString("proname"));
				vo.setCategory(rs.getString("category"));
				vo.setRedate(rs.getString("redate"));
				vo.setDoc(rs.getString("doc"));
				vo.setImg(rs.getString("img"));
				vo.setNumbering(rs.getInt("numbering"));
				list.add(vo);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return list;
		}
	}
	
	public List<ReviewVo> review(Page page){
		List<ReviewVo> list = new ArrayList<>();
			
		try {
			
			String f = page.getFindStr();
			page.setTotListSize(getTotListSize(f));
			page.pageCompute();
			
			String sql =" select * from ("
			        + "   select rownum no, m.* from (" 
					+ "select * from review"
					+ " where id like ? or proname like ? or category like ? or redate like ? or doc like ? or img like ? numbering like ? "
					+ "     order by proname asc) m   "
					+ " ) where no between ? and ? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%" + page.getFindStr() + "%");
			ps.setString(2, "%" + page.getFindStr() + "%");
			ps.setString(3, "%" + page.getFindStr() + "%");
			ps.setString(4, "%" + page.getFindStr() + "%");
			ps.setString(5, "%" + page.getFindStr() + "%");
			ps.setString(6, "%" + page.getFindStr() + "%");
			ps.setString(7, "%" + page.getFindStr() + "%");
			ps.setInt(8, page.getStartNo());
			ps.setInt(9, page.getEndNo());
			rs = ps.executeQuery();

			while(rs.next()) {
				ReviewVo vo = new ReviewVo();
				vo.setId(rs.getString("id"));
				vo.setProname(rs.getString("proname"));
				vo.setCategory(rs.getString("category"));
				vo.setRedate(rs.getString("redate"));
				vo.setDoc(rs.getString("doc"));
				vo.setImg(rs.getString("img"));
				vo.setNumbering(rs.getInt("numbering"));
				list.add(vo);
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
	
	
	
	public String insert(ReviewVo vo) {
		String msg = "리뷰가 정상적으로 저장되었습니다.";
		
		try {
			String sql = "insert into review(id, proname, category, redate, doc, img, numbering "
					+ "values(?, ?, ?, sysdate, ?, ?)";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getProname());
			ps.setString(3, vo.getCategory());
			ps.setString(4, vo.getDoc());
			ps.setString(5, vo.getImg());
			ps.setInt(6, vo.getNumbering());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				msg = "리뷰 작성 중 오류 발생";
				throw new Exception(msg);
			}
			
		} catch (Exception e) {
			msg = e.getMessage();
			
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return msg;
		}
	}
	
	public String update(ReviewVo vo) throws SQLException {
		String msg = "리뷰 내용을 수정하였습니다.";
		
		try {
			String sql = "update review set doc=? where id=? and numbering=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getDoc());
			ps.setString(2, vo.getId());
			ps.setInt(3, vo.getNumbering());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				msg="리뷰 수정 중 오류 발생";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		conn.close();
		return msg;
	}
	
	public String delete(ReviewVo vo) throws SQLException {
		String msg = "리뷰가 삭제되었습니다.";
		try {
			String sql = "delete from review where id=? and numbering=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getId());
			ps.setInt(2, vo.getNumbering());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				msg="리뷰 삭제 중 오류 발생";
			}
			
		} catch (Exception e) {
			msg = e.getMessage();
		}finally {
			conn.close();
			return msg;
		}
	}
	
	public ReviewVo view(String id) throws SQLException{
		ReviewVo vo = new ReviewVo();
		try {
			String sql = "select * from review where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setProname(rs.getString("proname"));
				vo.setCategory(rs.getString("category"));
				vo.setRedate(rs.getString("redate"));
				vo.setDoc(rs.getString("doc"));
				vo.setImg(rs.getString("img"));
				vo.setNumbering(rs.getInt("numbering"));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			conn.close();
			return vo;
		}
	}
	
	
	
	
	
	
}
