package member;

import java.util.Enumeration;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bean.MemberVo;
import bean.Page;

public class FileUpload {
	
	public static final String saveDir = "C:\\Users\\J\\eclipse-workspace\\web-page\\WebContent\\upload\\";
	int maxSize = 1024*1024*100; // 110Mb;
	String encoding = "utf-8";
	MultipartRequest mul;
	 String sysFile = "";
	 String oriFile = "";
	public FileUpload(HttpServletRequest req) {
		
		try {
			 mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());

			 //업로드 된 파일명
			 Enumeration<String> en = mul.getFileNames();
			 while(en.hasMoreElements()) {
				 String tag = (String) en.nextElement();
				 sysFile = mul.getFilesystemName(tag); // 수정된 파일명
				 oriFile = mul.getOriginalFileName(tag);
			
			 }
		} 
		catch (Exception e) {
			
		} 
	}
	
	public MemberVo getMember() {
		MemberVo vo = new MemberVo();
		vo.setAddress(mul.getParameter("address")); 
		vo.setEmail(mul.getParameter("email"));
		vo.setMdate(mul.getParameter("mdate"));
		vo.setMid(mul.getParameter("mid"));
		vo.setName(mul.getParameter("name"));
		vo.setPhone(mul.getParameter("Phone"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setZipcode(mul.getParameter("zipcode"));
		vo.setPhoto(sysFile);
		vo.setDelFile(mul.getParameter("delFile"));
		System.out.println(sysFile);
		return vo;
	}
	
	public Page getPage() {
		Page page = new Page();
		
		if(mul.getParameter("findStr") != null) {
			page.setFindStr(mul.getParameter("findStr"));
		}
		if(mul.getParameter("nowPage") != null && !mul.getParameter("nowPage").equals("") ) {
			int nowPage = Integer.parseInt(mul.getParameter("nowPage"));
			page.setNowPage(nowPage);
		}else {
			page.setNowPage(1);
		}
		return page;
	}
}
