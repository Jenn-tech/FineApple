package review;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import bean.MemberVo;

public class ReviewFileUpload {
	public static final String saveDir = "C:\\Users\\USER\\FineApple\\Fineapple-final\\WebContent\\review3\\upload\\";
	int maxSize = 1024*1024*100;//100Mb;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	
	public ReviewFileUpload(HttpServletRequest req) {
		try {
			mul = new MultipartRequest(req,saveDir,maxSize, encoding, new DefaultFileRenamePolicy());
			//업로드된 파일명
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String)en.nextElement();
				sysFile = mul.getFilesystemName(tag); // 수정된 파일명
				oriFile = mul.getOriginalFileName(tag); //원본 파일명
			}
			
			
		}catch(Exception ex) {
			
		}
	}
	
	public ReviewVo getReview() {
		ReviewVo vo = new ReviewVo();
		//vo.setMemberId(mul.getParameter("memberId"));
		vo.setReviewTitle(mul.getParameter("reviewTitle"));
		vo.setReviewDate(mul.getParameter("reviewDate"));
		vo.setReviewDoc(mul.getParameter("reviewDoc"));
		//vo.setProductName(mul.getParameter("productName"));
		//vo.setReviewCategory(mul.getParameter("reviewCategory"));
		vo.setReviewImg(mul.getParameter("reviewImg"));
		//vo.setReviewAvailable(Integer.parseInt(mul.getParameter("reviewAvailable")));
		vo.setDelFile(mul.getParameter("delFile"));
		
		return vo;
	}
	
	public ReviewPage getPage() {
		ReviewPage page = new ReviewPage();
		
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