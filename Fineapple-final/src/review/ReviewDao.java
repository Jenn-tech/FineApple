package review;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Application;

public class ReviewDao {
	Connection conn;
	PreparedStatement ps;
	ResultSet rs;
	
	public ReviewDao() {
		conn = new Application().getConn();
	}
	
	public int getTotListSize(String findStr) throws Exception{
		int totListSize = 0;
		String sql = "select count(reviewSerial) cnt from review where reviewSerial like ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1,  "%" + findStr + "%");
		
		rs = ps.executeQuery();
		if(rs.next()) {
			totListSize = rs.getInt("cnt");
		}
		return totListSize;
		
	}	
	
	public List<ReviewVo> select(ReviewPage page){
		List<ReviewVo> list = new ArrayList<ReviewVo>();
		try {
			
			String f = page.getFindStr();
			page.setTotListSize(getTotListSize(f));
			page.pageCompute();
			
			String sql = " select * from ("
			           + "   select rownum no, m.* from ("
			           + "     select * from review "
					   + "     where reviewSerial like ?"
					   + "     order by reviewSerial desc) m   "
					   + " ) where no between ? and ? ";
			
			ps = conn.prepareStatement(sql);
			ps.setString(1,  "%" + page.getFindStr() + "%");		
			ps.setInt(2, page.getStartNo());
			ps.setInt(3, page.getEndNo());
			rs = ps.executeQuery();
			
			while(rs.next()) {
				ReviewVo vo = new ReviewVo();
				vo.setReviewSerial(rs.getInt("reviewSerial"));
				vo.setMemberId(rs.getString("MemberId"));
				vo.setReviewTitle(rs.getString("reviewTitle"));
				vo.setReviewDate(rs.getString("reviewDate"));
				vo.setReviewDoc(rs.getString("reviewDoc"));
				vo.setProductName(rs.getString("ProductName"));
				vo.setReviewCategory(rs.getString("reviewCategory"));
				vo.setReviewImg(rs.getString("reviewImg"));
				vo.setReviewAvailable(rs.getInt("reviewAvailable"));
				//vo.setDelFile(rs.getString("delFile"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			disConn();
			return list;
		}
	}
	
	public String insert(ReviewVo vo) {
		String msg = "리뷰가 정상적으로 저장되었습니다.";
		
		try {
			String sql = "insert into review(reviewSerial, memberId, reviewTitle, reviewDate, reviewDoc, productName, reviewcategory, reviewImg, reviewAvailable)"
					+ "values(seq_reviewSerial.nextval,?,?,sysdate,?,?,?,?,?)";
			
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getMemberId());
				ps.setString(2, vo.getReviewTitle());
				ps.setString(3, vo.getReviewDoc());
				ps.setString(4, vo.getProductName());
				ps.setString(5, vo.getReviewCategory());
				ps.setString(6, vo.getReviewImg());
				ps.setInt(7, vo.getReviewAvailable());
				
				int rowCnt = ps.executeUpdate();
				if (rowCnt<1) {
					msg = "리뷰 작성 중 오류 발생";
					throw new Exception(msg);
				}
			
		} catch (Exception e) {
			msg = e.getMessage();
			
			// 이미 업로드된 파일 삭제
			File file = new File(ReviewFileUpload.saveDir + vo.getReviewImg());
			if(file.exists()) {
				file.delete();
			}
						
		}finally {
			disConn();
			return msg;
		}
	}
	
	public String update(ReviewVo vo) {
		String msg = "리뷰가 정상적으로 수정되었습니다.";
		
		try {
			String sql = "update review set reviewTitle = ?, reviewDoc = ?, reviewDate = sysdate";
			
				if(vo.getReviewImg() != null && !vo.getReviewImg().equals("")) {
					sql += ", reviewImg= '" + vo.getReviewImg() + "'";
				}
				
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getReviewTitle());
				ps.setString(2, vo.getReviewDoc());
				
				int rowCnt = ps.executeUpdate();
				if (rowCnt<1) {
					msg = "리뷰 작성 중 오류 발생";
					throw new Exception(msg);
				}
				
				//이미지가 수정된 경우 기존 파일 삭제
				if(vo.getReviewImg() !=null && !vo.getReviewImg().equals("")) {
					File file = new File(ReviewFileUpload.saveDir + vo.getDelFile());
					if(file.exists()) {
						file.delete();
					}
				}
			
		} catch (Exception e) {
			msg = e.getMessage();
			
						
		}finally {
			disConn();
			return msg;
		}
	}
	
	public String delete(ReviewVo vo){
		String msg = "리뷰가 정상적으로 삭제되었습니다.";
			try {
				String sql = "update review set reviewAvailable = 0 where reviewSerial = ? ";
				ps = conn.prepareStatement(sql);
				System.out.println(vo.getReviewSerial());
				ps.setInt(1,vo.getReviewSerial());
			
			int rowCnt = ps.executeUpdate();
			if(rowCnt<1) {
				throw new Exception("회원 정보 삭제중 오류 발생");
			}
			
			//첨부 파일 삭제
			File file = new File(ReviewFileUpload.saveDir + vo.getDelFile());
			if(file.exists()) {
				file.delete();
			}
			
		}catch(Exception ex) {
			msg = ex.getMessage();
		}finally {
			disConn();
			return msg;
		}
	}
	
	public ReviewVo view(int reviewSerial){
		ReviewVo vo = new ReviewVo();
		try {
			String sql = "select * from review where reviewSerial=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, reviewSerial);
			rs = ps.executeQuery();
			if(rs.next()) {
				vo.setReviewSerial(rs.getInt("reviewSerial"));
				vo.setMemberId(rs.getString("memberId"));
				vo.setReviewTitle(rs.getString("reviewTitle"));
				vo.setReviewDate(rs.getString("reviewDate"));
				vo.setReviewDoc(rs.getString("reviewDoc"));
				vo.setReviewAvailable(rs.getInt("reviewAvailable"));
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConn();
			return vo;
		}
	}
	
	public void disConn() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
