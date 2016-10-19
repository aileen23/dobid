package com.dobid.beans;

import java.sql.Date;

public class memberDTO {
	private String member_id;
	private String name;
	private String pass;
	private String phone;
	private String email;
	private String address;
	private String nickname;
	private String introduction;
	private Date birthday;
	private int charging_amount;

	public memberDTO() {
	}

	public memberDTO(String member_id, String name, String pass, String phone, String email, String address,
			String nickname, String introduction, Date birthday, int charging_amount) {
		super();
		this.member_id = member_id;
		this.name = name;
		this.pass = pass;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.nickname = nickname;
		this.introduction = introduction;
		this.birthday = birthday;
		this.charging_amount = charging_amount;
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

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public int getCharging_amount() {
		return charging_amount;
	}

	public void setCharging_amount(int charging_amount) {
		this.charging_amount = charging_amount;
	}

}
