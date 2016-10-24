package com.dobid.beans;

public class LoginDTO {
	private String member_id;
	private String pass;

	public LoginDTO() {
	}

	public LoginDTO(String member_id, String pass) {
		super();
		this.member_id = member_id;
		this.pass = pass;
	}

	public String getmember_id() {
		return member_id;
	}

	public void setmember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
