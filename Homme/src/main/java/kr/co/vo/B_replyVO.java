package kr.co.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
public class B_replyVO {
	
	private int b_no;
	private int r_no;
	private String r_content;
	private String r_writer;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy=MM-dd")
	private Date r_date;
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_writer() {
		return r_writer;
	}
	public void setR_writer(String r_writer) {
		this.r_writer = r_writer;
	}
	public Date getR_date() {
		return r_date;
	}
	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}
	@Override
	public String toString() {
		return "B_replyVO [b_no=" + b_no + ", r_no=" + r_no + ", r_content=" + r_content + ", r_writer=" + r_writer + ", r_date="
				+ r_date + "]";
	}
}
