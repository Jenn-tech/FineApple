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
	
	SqlSession sqlSesstion;
	
	public InquiryBookDao() {
		try {
			sqlSesstion = InquiryBookFactory.getFactory().openSession();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public String insert(InquiryBookVo vo) {
		String msg = "저장 완료";
		
		try {
			int cnt = sqlSesstion.insert("inquiry.insert", vo);
			if (cnt<1) {
				throw new Exception("오류 발생");
			}
			sqlSesstion.commit();
		} catch (Exception e) {
			sqlSesstion.rollback();
			msg = e.getMessage();
		}
		finally {
			sqlSesstion.close();
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
			int totListSize = sqlSesstion.selectOne("inquiry.tot_list_size", page);
			
			page.setTotListSize(totListSize);
			page.pageCompute();
					
			list = sqlSesstion.selectList("inquiry.select", page);
			System.out.println(list);
			map.put("page", page);
			map.put("list", list);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			sqlSesstion.close();
			return map;
		}
	}
	
	public InquiryBookVo view(int serial) {
		InquiryBookVo vo = null;
		List<InquiryBookAttVo> attList = null;
		
		try {
			System.out.println(serial);
			vo = sqlSesstion.selectOne("inquiry.view", serial);
			vo.setAttList(attList);
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlSesstion.close();
		}
		return vo;
	}
}
















