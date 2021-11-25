package kr.co.vo;

import java.util.Date;

public class CouponVO {
	private int cpn_no;
	private int cpn_mem_no;
	private int cpn_disc;
	private Date cpn_edate;		
	private String cpn_name;
	
	public Date getCpn_edate() {
		return cpn_edate;
	}
	public void setCpn_edate(Date cpn_edate) {
		this.cpn_edate = cpn_edate;
	}
	public int getCpn_no() {
		return cpn_no;
	}
	public void setCpn_no(int cpn_no) {
		this.cpn_no = cpn_no;
	}
	public int getCpn_mem_no() {
		return cpn_mem_no;
	}
	public void setCpn_mem_no(int cpn_mem_no) {
		this.cpn_mem_no = cpn_mem_no;
	}
	public int getCpn_disc() {
		return cpn_disc;
	}
	public void setCpn_disc(int cpn_disc) {
		this.cpn_disc = cpn_disc;
	}
	public String getCpn_name() {
		return cpn_name;
	}
	public void setCpn_name(String cpn_name) {
		this.cpn_name = cpn_name;
	}
	
	
	
}
