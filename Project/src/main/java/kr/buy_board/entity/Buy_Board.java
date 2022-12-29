package kr.buy_board.entity;

public class Buy_Board {
	private int buy_seq;
	private String buy_title;
	private String buy_content;
	private String buy_file;
	private String buy_regdate;
	private String login_id;
	private int buy_cnt;
	private int buy_likes;
	private int buy_cmtcnt;
	public int getBuy_seq() {
		return buy_seq;
	}
	public void setBuy_seq(int buy_seq) {
		this.buy_seq = buy_seq;
	}
	public String getBuy_title() {
		return buy_title;
	}
	public void setBuy_title(String buy_title) {
		this.buy_title = buy_title;
	}
	public String getBuy_content() {
		return buy_content;
	}
	public void setBuy_content(String buy_content) {
		this.buy_content = buy_content;
	}
	public String getBuy_file() {
		return buy_file;
	}
	public void setBuy_file(String buy_file) {
		this.buy_file = buy_file;
	}
	public String getBuy_regdate() {
		return buy_regdate;
	}
	public void setBuy_regdate(String buy_regdate) {
		this.buy_regdate = buy_regdate;
	}
	public String getLogin_id() {
		return login_id;
	}
	public void setLogin_id(String login_id) {
		this.login_id = login_id;
	}
	public int getBuy_cnt() {
		return buy_cnt;
	}
	public void setBuy_cnt(int buy_cnt) {
		this.buy_cnt = buy_cnt;
	}
	public int getBuy_likes() {
		return buy_likes;
	}
	public void setBuy_likes(int buy_likes) {
		this.buy_likes = buy_likes;
	}
	public int getBuy_cmtcnt() {
		return buy_cmtcnt;
	}
	public void setBuy_cmtcnt(int buy_cmtcnt) {
		this.buy_cmtcnt = buy_cmtcnt;
	}
}
