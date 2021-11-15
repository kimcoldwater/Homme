package kr.co.vo;

import java.util.Date;

public class MemberVO {

	private String mem_id;
	private String mem_name;
	private String mem_email;
	private Number mem_tel;
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public Number getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(Number mem_tel) {
		this.mem_tel = mem_tel;
	}

}
