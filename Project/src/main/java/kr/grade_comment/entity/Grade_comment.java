package kr.grade_comment.entity;

public class Grade_comment {
	private int grade_cmt_seq;
	private int grade_seq;
	private String grade_cmt_content;
	private String grade_cmt_date;
	private String login_id;
	public int getgrade_cmt_seq() {
		return grade_cmt_seq;
	}
	public void setgrade_cmt_seq(int grade_cmt_seq) {
		this.grade_cmt_seq = grade_cmt_seq;
	}
	public int getgrade_seq() {
		return grade_seq;
	}
	public void setgrade_seq(int grade_seq) {
		this.grade_seq = grade_seq;
	}
	public String getgrade_cmt_content() {
		return grade_cmt_content;
	}
	public void setgrade_cmt_content(String grade_cmt_content) {
		this.grade_cmt_content = grade_cmt_content;
	}
	public String getgrade_cmt_date() {
		return grade_cmt_date;
	}
	public void setgrade_cmt_date(String grade_cmt_date) {
		this.grade_cmt_date = grade_cmt_date;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	
	
	
}
