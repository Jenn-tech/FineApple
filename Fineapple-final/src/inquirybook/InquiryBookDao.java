package inquirybook;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bean.CsPage;

public class InquiryBookDao {
	
	SqlSession sqlSession;
	
	public InquiryBookDao() {
		try {
			sqlSession = InquiryBookFactory.getFactory().openSession();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String insert(InquiryBookVo vo) {
		String msg = "저장 완료";
		
		try {
			System.out.println(vo.getInquiryType());
			int cnt = sqlSession.insert("inquiry.insert", vo);
			if (cnt<1) {
				throw new Exception("오류 발생");
			}
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			msg = e.getMessage();
		}
		finally {
			sqlSession.close();
			return msg;
		}
	} 
	
	public String insertA(InquiryBookVo vo) {
		String msg = "정상적으로 등록되었습니다.";
		
		try {
			System.out.println(vo.getMemberName());
			int cnt = sqlSession.insert("inquiry.insertanswer", vo);
			
			if(cnt < 1) {
				throw new Exception("오류 발생 = 답변");
			}
			
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
		}
		finally {
			sqlSession.close();
		}
		return msg;
	}
	
	public void delFile(List<InquiryBookAttVo> delList) {
		System.out.println("delFile");
		for(InquiryBookAttVo v : delList) {
			System.out.println(v.getSysFile());
			File f = new File(FileUpload.saveDir + v.getSysFile());
			if(f.exists()) {
				f.delete();
			}
		}
	}
	
	public Map<String, Object> select(CsPage page) {
		Map<String, Object> map = new HashMap<>();
		List<InquiryBookVo> list = new ArrayList<>();
		
		try {
			int totListSize = sqlSession.selectOne("inquiry.tot_list_size", page);
			page.setTotListSize(totListSize);
			page.pageCompute();
					
			list = sqlSession.selectList("inquiry.select", page);
			map.put("page", page);
			map.put("list", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			sqlSession.close();
			return map;
		}
	}
	
	public InquiryBookVo view(int serial) {
		InquiryBookVo vo = null;
		List<InquiryBookAttVo> attList = null;
		
		try {
			vo = sqlSession.selectOne("inquiry.view", serial);
			attList = sqlSession.selectList("inquiry.select_att", serial);
			vo.setAttList(attList);
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.close();
		}
		return vo;
	}
	
	public String delete(InquiryBookVo vo) {
		String msg ="정상적으로 삭제를 완료했습니다.";
		List<InquiryBookAttVo> attList = null;
		try {
			attList = sqlSession.selectList("inquiry.select_att", vo.getSerial());
			System.out.println(attList.size());
			int cnt = sqlSession.delete("inquiry.delete", vo);
			if(cnt > 0) {
				if(attList.size() > 0) {
					cnt = sqlSession.delete("inquiry.delete_att_pserial", vo.getSerial());
					System.out.println(cnt);
					if(cnt < 1) {
						throw new Exception("오류 발생");
					}
					delFile(attList);
				}
			}
			else {
				throw new Exception("오류 발생 2");
			}
			sqlSession.commit();
		}
		catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}	
		finally {
			sqlSession.close();
		}
		return msg;
	}
	
	public String update(InquiryBookVo vo) {
		String msg = "정상적으로 수정되었습니다.";
		
		try {
			int cnt = sqlSession.update("inquiry.update", vo);
				System.out.println(cnt);
			if(cnt > 0) {
				if(vo.getAttList() != null) {
					cnt = sqlSession.insert("inquiry.insert_att", vo);
					if(cnt < 0) {
						throw new Exception("오류 발생 - 파일 추가중");
					}
				}
				if(vo.getDelFiles() != null) {
					cnt = sqlSession.delete("board.delete_att", vo);
					if(cnt < 0) {
						throw new Exception("오류 발생 - 파일 삭제중");
					}
					delFile(vo.getDelFiles());
				}
			}
			else {
				throw new Exception("오류 발생 업데이트");
			}
			sqlSession.commit();
		} catch (Exception e) {
			sqlSession.rollback();
			e.printStackTrace();
			delFile(vo.getAttList());
		}
		finally {
			sqlSession.close();
		}
		return msg;
	}
}
















