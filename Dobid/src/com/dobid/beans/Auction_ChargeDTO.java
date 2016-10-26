package com.dobid.beans;

import java.sql.Date;

public class Auction_ChargeDTO {
	private Date end_date;
	private int highest_price;
	private String title;
	
	public Auction_ChargeDTO(Date end_date, int highest_price, String title) {
		super();
		this.end_date = end_date;
		this.highest_price = highest_price;
		this.title = title;
	}
	
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public int getHighest_price() {
		return highest_price;
	}
	public void setHighest_price(int highest_price) {
		this.highest_price = highest_price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
}
