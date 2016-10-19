package com.dobid.beans;

public class messageDTO {
	private String member_id;
	private String send_id;
	private String title;
	private String contents;
	private char reception_check;

	public messageDTO() {
	}

	public messageDTO(String member_id, String send_id, String title, String contents, char reception_check) {
		super();
		this.member_id = member_id;
		this.send_id = send_id;
		this.title = title;
		this.contents = contents;
		this.reception_check = reception_check;
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
