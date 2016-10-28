package com.dobid.beans;

public class MessageDTO {
	private String member_id;
	private String send_id;
	private String title;
	private String contents;
	private String regist_date;
	private char reception_check;

	public MessageDTO() {
	}
	
	public MessageDTO(String send_id, String member_id, String title, String contents, String regist_date,
			char reception_check) {
		super();
		this.send_id = send_id;
		this.member_id = member_id;
		this.title = title;
		this.contents = contents;
		this.regist_date = regist_date;
		this.reception_check = reception_check;
	}
	public MessageDTO(String send_id, String title, String contents, String regist_date) {
		super();
		this.send_id = send_id;
		this.title = title;
		this.contents = contents;
		this.regist_date =regist_date;
	}

	public String getRegist_date() {
		return regist_date;
	}
	
	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}
	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getSend_id() {
		return send_id;
	}

	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public char getReception_check() {
		return reception_check;
	}

	public void setReception_check(char reception_check) {
		this.reception_check = reception_check;
	}

}
