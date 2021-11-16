package kr.co.vo;

import java.util.Date;

public class BoardVO {
	
	private int b_no;
	private String b_title;
	private String b_content;
	private String b_writer;
	private Number b_mem_no;
	private Date b_date;
	private Number b_count;
	private String b_notice;
	private int b_hit;
	private int b_cate;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public Number getB_mem_no() {
		return b_mem_no;
	}
	public void setB_mem_no(Number b_mem_no) {
		this.b_mem_no = b_mem_no;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public Number getB_count() {
		return b_count;
	}
	public void setB_count(Number b_count) {
		this.b_count = b_count;
	}
	public String getB_notice() {
		return b_notice;
	}
	public void setB_notice(String b_notice) {
		this.b_notice = b_notice;
	}
	public int getB_hit() {
		return b_hit;
	}
	public void setB_hit(int b_hit) {
		this.b_hit = b_hit;
	}
	public int getB_cate() {
		return b_cate;
	}
	public void setB_cate(int b_cate) {
		this.b_cate = b_cate;
	}
	
}
