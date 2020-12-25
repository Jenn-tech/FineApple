package questionbook;

import java.util.Enumeration;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUpload {
	public static final String saveDir = "C:\\Users\\J\\eclipse-workspace\\fineapple\\WebContent\\Upload\\";
	int maxSize = 1024*1024*100;
	String encoding = "utf-8";
	MultipartRequest mul;
	String sysFile = "";
	String oriFile = "";
	
	public FileUpload(HttpServletRequest req) {
		try {
			
			//2. 파일 저장 경로 3. 파일 최대 크기(오버하면 IOException 발생) 3. 코딩타입 4. 디렉토리에 제목이 같은 파일이 이미 있을 때 어떻게 저장할 것 인지 선택 
			mul = new MultipartRequest(req, saveDir, maxSize, encoding, new DefaultFileRenamePolicy());
			
			//업로드 된 파일명
			Enumeration<String> en = mul.getFileNames();
			while(en.hasMoreElements()) {
				String tag = (String) en.nextElement();
				sysFile = mul.getFilesystemName(tag); //수정된 파일 이름
				oriFile = mul.getOriginalFileName(tag);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public QuestionBookVo getQuestion() {
		QuestionBookVo vo = new QuestionBookVo();
		vo.setQuestionNum(mul.getParameter("questionnum"));
		vo.setMidNum(mul.getParameter("midnum"));
		vo.setPwd(mul.getParameter("pwd"));
		vo.setName(mul.getParameter("name"));
		vo.setInquiryType(mul.getParameter("inquirytype"));
		vo.setOrderNum(mul.getParameter("ordernum"));
		vo.setTitle(mul.getParameter("title"));
		vo.setDoc(mul.getParameter("doc"));
		vo.setPhoto(mul.getParameter("photo"));
		vo.setSecretCheck(mul.getParameter("secretcheck"));
		return vo;
		
	}

}
