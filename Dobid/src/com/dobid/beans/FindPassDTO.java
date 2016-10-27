package com.dobid.beans;

public class FindPassDTO {
	private String member_id;
	private String name;
	private String email;
	private String pass;

	public FindPassDTO() {
	}

	public FindPassDTO(String member_id, String name, String email, String pass) {
		super();
		this.member_id = member_id;
		this.name = name;
		this.email = email;
		this.pass = pass;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
