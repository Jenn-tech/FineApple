package inquirybook;

import java.util.Enumeration;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUpload {
	public static final String saveDir = "C:\\Users\\¡§«ÿ¡ÿ\\Documents\\FineApple\\Fineapple-final\\WebContent\\inquiryUpload\\";
	int maxSize = 1024*1024*100;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	
	public FileUpload(HttpServletRequest req) {
		try {
			
			mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String) en.nextElement();
				sysFile = mul.getFilesystemName(tag); //?àò?†ï?êú ?åå?ùº ?ù¥Î¶?
				oriFile = mul.getOriginalFileName(tag);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public InquiryBookVo getQuestion() {
		InquiryBookVo vo = new InquiryBookVo();
		vo.setMid(mul.getParameter("mid"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setSubject(mul.getParameter("subject"));
		vo.setDoc(mul.getParameter("doc"));
		vo.setInquiryType(mul.getParameter("inquirytype"));
		vo.setHit(mul.getParameter("hit"));
		vo.setPserial(mul.getParameter("pserial"));
		
		return vo;
		
	}

}
