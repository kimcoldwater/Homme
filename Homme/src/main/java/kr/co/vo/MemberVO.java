package kr.co.vo;

import java.util.Date;

public class MemberVO {
	private int MEM_NO;
	private String MEM_ID;
	private String MEM_PW;
	private String MEM_NAME; 
	private String MEM_POST;
	private String MEM_ADR;
	private String MEM_TEL;
	private String MEM_EMAIL; 
	private Date MEM_REGDATE;
	private int MEM_POINT; 
	private boolean useCookie;
	private String MEM_CKID; 
	private Date MEM_CKLIMIT;
	private Date MEM_SECTIONTIME;
	private String MEM_COUPON;
	private String MEM_RANK;
	
	
	
	public String getMEM_RANK() {
		return MEM_RANK;
	}
	public void setMEM_RANK(String mEM_RANK) {
		MEM_RANK = mEM_RANK;
	}
	public int getMEM_NO() {
		return MEM_NO;
	}
	public void setMEM_NO(int mEM_NO) {
		MEM_NO = mEM_NO;
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}
	public String getMEM_PW() {
		return MEM_PW;
	}
	public void setMEM_PW(String mEM_PW) {
		MEM_PW = mEM_PW;
	}
	public String getMEM_NAME() {
		return MEM_NAME;
	}
	public void setMEM_NAME(String mEM_NAME) {
		MEM_NAME = mEM_NAME;
	}
	public String getMEM_POST() {
		return MEM_POST;
	}
	public void setMEM_POST(String mEM_POST) {
		MEM_POST = mEM_POST;
	}
	public String getMEM_ADR() {
		return MEM_ADR;
	}
	public void setMEM_ADR(String mEM_ADR) {
		MEM_ADR = mEM_ADR;
	}
	public String getMEM_TEL() {
		return MEM_TEL;
	}
	public void setMEM_TEL(String mEM_TEL) {
		MEM_TEL = mEM_TEL;
	}
	public String getMEM_EMAIL() {
		return MEM_EMAIL;
	}
	public void setMEM_EMAIL(String mEM_EMAIL) {
		MEM_EMAIL = mEM_EMAIL;
	}
	public Date getMEM_REGDATE() {
		return MEM_REGDATE;
	}
	public void setMEM_REGDATE(Date mEM_REGDATE) {
		MEM_REGDATE = mEM_REGDATE;
	}
	public int getMEM_POINT() {
		return MEM_POINT;
	}
	public void setMEM_POINT(int mEM_POINT) {
		MEM_POINT = mEM_POINT;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	public String getMEM_CKID() {
		return MEM_CKID;
	}
	public void setMEM_CKID(String mEM_CKID) {
		MEM_CKID = mEM_CKID;
	}
	public Date getMEM_CKLIMIT() {
		return MEM_CKLIMIT;
	}
	public void setMEM_CKLIMIT(Date mEM_CKLIMIT) {
		MEM_CKLIMIT = mEM_CKLIMIT;
	}
	public String getMEM_COUPON() {
		return MEM_COUPON;
	}
	public void setMEM_COUPON(String mEM_COUPON) {
		MEM_COUPON = mEM_COUPON;
	}
	public Date getMEM_SECTIONTIME() {
		return MEM_SECTIONTIME;
	}
	public void setMEM_SECTIONTIME(Date mEM_SECTIONTIME) {
		MEM_SECTIONTIME = mEM_SECTIONTIME;
	}
	
	
}
