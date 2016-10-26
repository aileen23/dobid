package com.dobid.beans;

import java.sql.Date;

public class ChargelistDTO {
	private String charge_type;
	private Date charge_time;
	private String charge_title;
	private int charge_price;
	
	public String getCharge_type() {
		return charge_type;
	}

	public void setCharge_type(String charge_type) {
		this.charge_type = charge_type;
	}

	public Date getCharge_time() {
		return charge_time;
	}

	public void setCharge_time(Date charge_time) {
		this.charge_time = charge_time;
	}

	public String getCharge_title() {
		return charge_title;
	}

	public void setCharge_title(String charge_title) {
		this.charge_title = charge_title;
	}

	public int getCharge_price() {
		return charge_price;
	}

	public void setCharge_price(int charge_price) {
		this.charge_price = charge_price;
	}

	
	public ChargelistDTO(String charge_type, Date charge_time, String charge_title, int charge_price) {
		super();
		this.charge_type = charge_type;
		this.charge_time = charge_time;
		this.charge_title = charge_title;
		this.charge_price = charge_price;
	}

}