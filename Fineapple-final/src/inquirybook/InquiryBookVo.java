package inquirybook;

import java.util.List;


public class InquiryBookVo {
	String serial; 
	String mserial; 
	String mid;  
	String pwd; 
	String subject;  
	String doc;  
	String mdate;  
	String inquiryType;  
	String hit;  
	String pserial;
	String secretCheck; 

	int attCnt;
	List<InquiryBookAttVo> attList;
	List<InquiryBookAttVo> delFiles;
	
	public String getSerial() {
		return serial;
	}
	public void setSerial(String string) {
		this.serial = string;
	}
	public String getMserial() {
		return mserial;
	}
	public void setMserial(String mserial) {
		this.mserial = mserial;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public String getInquiryType() {
		return inquiryType;
	}
	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getPserial() {
		return pserial; 
	}
	public void setPserial(String pserial) {
		this.pserial = pserial;
	}
	public String getSecretCheck() {
		return secretCheck;
	}
	public void setSecretCheck(String secretCheck) {
		this.secretCheck = secretCheck;
	}
}
