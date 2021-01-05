package inquirybook;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bean.CsPage;

public class FileUpload {
	public static final String saveDir = "C:\\Users\\정해준\\Documents\\FineApple\\Fineapple-final\\WebContent\\inquiryUpload\\";
	int maxSize = 1024*1024*100;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	List<InquiryBookAttVo> attList = new ArrayList<>();
	
	
	public FileUpload(HttpServletRequest req) {
		try {
			mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String) en.nextElement();
				sysFile = mul.getFilesystemName(tag); // 수정된 파일명
				oriFile = mul.getOriginalFileName(tag); // 원본 파일명
				if(oriFile == null) {
					continue;
				}
				InquiryBookAttVo attVo = new InquiryBookAttVo();
				attVo.setSysFile(sysFile);
				attVo.setOriFile(oriFile);
				attList.add(attVo);
			}
			
			
		} catch (Exception e) {
			System.out.println("FileUpload 실패");
			e.printStackTrace();
		}
	}
	
	public InquiryBookVo getInquiryBookVo(char mode) {
		InquiryBookVo vo = new InquiryBookVo();
		int serial = Integer.parseInt(mul.getParameter("serial"));
		vo.setSerial(serial);
		//vo.setMserial(mul.getParameter("mserial"));
		vo.setMemberName(mul.getParameter("name"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setSubject(mul.getParameter("subject"));
		vo.setDoc(mul.getParameter("doc"));
		//vo.setInquiryType(mul.getParameter("inquirytype"));
		//vo.setHit(mul.getParameter("hit"));
		//vo.setPserial(mul.getParameter("pserial"));
		//vo.setDocVisible(mul.getParameter());
		
		System.out.println(attList.size());
		if(mul.getParameter("serial") != null) {
			vo.setPserial(Integer.parseInt(mul.getParameter("serial")));
		}
		if(mul.getParameter("hit") != null) {
			vo.setHit(Integer.parseInt(mul.getParameter("hit")));
		}
		
		if(attList.size() > 0) {
			vo.setAttList(attList);
		}
		System.out.println(vo.getAttList());
		if(mode == 'u' || mode == 'd') {
			vo.setSerial(Integer.parseInt(mul.getParameter("serial")));
			if(mul.getParameterValues("delFiles") != null) {
				List<InquiryBookAttVo> delFiles = new ArrayList<>();
				for(String s : mul.getParameterValues("delFiles")) {
					InquiryBookAttVo v = new InquiryBookAttVo();
					v.setSysFile(s);
					delFiles.add(v);
					
				}
				vo.setDelFiles(delFiles);
			}
		}
		
		return vo;
	}
	
	public CsPage getPage() {
		CsPage page = new CsPage(); 
		if(mul.getParameter("findStr") != null) {
			page.setFindStr(mul.getParameter("findStr"));
		}
		if((mul.getParameter("nowPage")) != null && !mul.getParameter("nowPage").equals("")) {
			int nowPage = Integer.parseInt(mul.getParameter("nowPage"));
			page.setNowPage(nowPage);
		}
		else {
			page.setNowPage(1);
		}
		
		return page;
	}

}
