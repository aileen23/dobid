package com.dobid.beans;



public class Groupbuy_participantDTO {
	private int groupbuy_board_num;
	private int buy_price_amount;
	private String buyer_id;
	private String buy_date;
	private String buy_check;

	public Groupbuy_participantDTO() {
	}

	public Groupbuy_participantDTO(int groupbuy_board_num, int buy_price_amount, String buyer_id, String buy_date,
			String buy_check) {
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

	public String getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(String buy_date) {
		this.buy_date = buy_date;
	}

	public String getBuy_check() {
		return buy_check;
	}

	public void setBuy_check(String buy_check) {
		this.buy_check = buy_check;
	}

}
