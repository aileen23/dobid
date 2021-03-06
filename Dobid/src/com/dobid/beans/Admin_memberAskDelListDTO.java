package com.dobid.beans;

public class Admin_memberAskDelListDTO {
	private String member_id;
	private String name;
	private String phone;
	private String email;
	private String birthday;
	private int charging_amount;
	private String withdrawal;
	private String delete_date;

	public Admin_memberAskDelListDTO() {
		// TODO Auto-generated constructor stub
	}

	public Admin_memberAskDelListDTO(String member_id, String name, String phone, String email, String birthday,
			int charging_amount, String withdrawal, String delete_date) {
		super();
		this.member_id = member_id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.birthday = birthday;
		this.charging_amount = charging_amount;
		this.withdrawal = withdrawal;
		this.delete_date = delete_date;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public int getCharging_amount() {
		return charging_amount;
	}

	public void setCharging_amount(int charging_amount) {
		this.charging_amount = charging_amount;
	}

	public String getWithdrawal() {
		return withdrawal;
	}

	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}

	public String getDelete_date() {
		return delete_date;
	}

	public void setDelete_date(String delete_date) {
		this.delete_date = delete_date;
	}

}
