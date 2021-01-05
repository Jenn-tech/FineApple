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
			System.out.println(list);
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
			System.out.println(serial);
			vo = sqlSession.selectOne("inquiry.view", serial);
			attList = sqlSession.selectList("inquiry.select_att", serial);
			System.out.println(attList);
			vo.setAttList(attList);
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.close();
		}
		return vo;
	}
	
	public InquiryBookVo update(int serial) {
		InquiryBookVo vo = null;
		List<InquiryBookAttVo> attList = null;
		try {
			vo = sqlSession.selectOne("inquiry.view", serial);
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			sqlSession.close();
		}
		return vo;
	}
	
	public String delete(InquiryBookVo vo) {
		String msg ="정상적으로 삭제를 완료했습니다.";
		List<InquiryBookAttVo> attList = null;
		try {
			attList = sqlSession.selectList("inquiry.select_att", vo.getSerial());
			int cnt = sqlSession.delete("inquiry.delete", vo);
			if(cnt > 0) {
				cnt = sqlSession.delete("inquiry.delete_att_pserial", vo.getSerial());
				if(cnt < 1) {
					throw new Exception("오류 발생");
				}
				delFile(attList);
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
	
}
















