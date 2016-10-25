package com.dobid.beans;

public class Find_idDTO {
	private String name;
	private String birthday;
	private String phone;

	public Find_idDTO() {
	}

	public Find_idDTO(String name, String birthday, String phone) {
		super();
		this.name = name;
		this.birthday = birthday;
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
