package inquirybook;

import java.util.List;


public class InquiryBookVo {
	int serial;
	int mserial;
	int hit;
	int pserial;
	String inquiryType;
	String memberName;
	String pwd;
	String subject;
	String doc;
	String docVisible;
	String created;
	
	int attCnt;
	List<InquiryBookAttVo> attList;
	List<InquiryBookAttVo> delFiles;
	
	
	public int getAttCnt() {
		return attCnt;
	}
	public void setAttCnt(int attCnt) {
		this.attCnt = attCnt;
	}
	public List<InquiryBookAttVo> getAttList() {
		return attList;
	}
	public void setAttList(List<InquiryBookAttVo> attList) {
		this.attList = attList;
	}
	public List<InquiryBookAttVo> getDelFiles() {
		return delFiles;
	}
	public void setDelFiles(List<InquiryBookAttVo> delFiles) {
		this.delFiles = delFiles;
	}
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	public int getMserial() {
		return mserial;
	}
	public void setMserial(int mserial) {
		this.mserial = mserial;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getPserial() {
		return pserial;
	}
	public void setPserial(int pserial) {
		this.pserial = pserial;
	}
	public String getInquiryType() {
		return inquiryType;
	}
	public void setInquiryType(String inquiryType) {
		this.inquiryType = inquiryType;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
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
	public String getDocVisible() {
		return docVisible;
	}
	public void setDocVisible(String docVisible) {
		this.docVisible = docVisible;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	
}
