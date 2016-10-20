package com.dobid.beans;

import java.sql.Date;

public class Groupbuy_participantDTO {
	private int groupbuy_board_num;
	private int buy_price_amount;
	private String buyer_id;
	private Date buy_date;
	private char buy_check;

	public Groupbuy_participantDTO() {
	}

	public Groupbuy_participantDTO(int groupbuy_board_num, int buy_price_amount, String buyer_id, Date buy_date,
			char buy_check) {
		super();
		this.groupbuy_board_num = groupbuy_board_num;
		this.buy_price_amount = buy_price_amount;
		this.buyer_id = buyer_id;
		this.buy_date = buy_date;
		this.buy_check = buy_check;
	}

	public int getGroupbuy_board_num() {
		return groupbuy_board_num;
	}

	public void setGroupbuy_board_num(int groupbuy_board_num) {
		this.groupbuy_board_num = groupbuy_board_num;
	}

	public int getBuy_price_amount() {
		return buy_price_amount;
	}

	public void setBuy_price_amount(int buy_price_amount) {
		this.buy_price_amount = buy_price_amount;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {
		this.buyer_id = buyer_id;
	}

	public Date getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(Date buy_date) {
		this.buy_date = buy_date;
	}

	public char getBuy_check() {
		return buy_check;
	}

	public void setBuy_check(char buy_check) {
		this.buy_check = buy_check;
	}

}
