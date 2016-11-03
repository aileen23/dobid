package com.dobid.beans;

import java.sql.Date;

public class ChargeDTO {
	private String member_id;
	private int charge_will_amount;
	private String charge_date;
	private String charge_type;
	private String charge_check;
	private int charge_before_amount;

	public ChargeDTO() {
	}

	public ChargeDTO(String member_id, int charge_will_amount, String charge_date, String charge_type, String charge_check,
			int charge_before_amount) {
		super();
		this.member_id = member_id;
		this.charge_will_amount = charge_will_amount;
		this.charge_date = charge_date;
		this.charge_type = charge_type;
		this.charge_check = charge_check;
		this.charge_before_amount = charge_before_amount;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public int getCharge_will_amount() {
		return charge_will_amount;
	}

	public void setCharge_will_amount(int charge_will_amount) {
		this.charge_will_amount = charge_will_amount;
	}

	public String getCharge_date() {
		return charge_date;
	}

	public void setCharge_date(String charge_date) {
		this.charge_date = charge_date;
	}

	public String getCharge_type() {
		return charge_type;
	}

	public void setCharge_type(String charge_type) {
		this.charge_type = charge_type;
	}

	public String getCharge_check() {
		return charge_check;
	}

	public void setCharge_check(String charge_check) {
		this.charge_check = charge_check;
	}

	public int getCharge_before_amount() {
		return charge_before_amount;
	}

	public void setCharge_before_amount(int charge_before_amount) {
		this.charge_before_amount = charge_before_amount;
	}

}
