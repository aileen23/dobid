package com.dobid.beans;

public class Admin_loginDTO {
	private String admin_id;
	private String pass;

	public Admin_loginDTO() {
	}

	public Admin_loginDTO(String admin_id, String pass) {
		super();
		this.admin_id = admin_id;
		this.pass = pass;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
