package com.dobid.beans;

public class LoginDTO {
	private String member_id;
	private String pass;
	private String withdrawal;

	public LoginDTO() {
	}

	public LoginDTO(String member_id, String pass, String withdrawal) {
		super();
		this.member_id = member_id;
		this.pass = pass;
		this.withdrawal = withdrawal;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getWithdrawal() {
		return withdrawal;
	}

	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}

}
