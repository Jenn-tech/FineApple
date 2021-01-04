package inquirybook;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	
}
