package com.dobid.beans;


public class Auction_participantDTO {
	private int auction_board_num;
	private int bid_price_amount;
	private String buyer_id;
	private String bid_date;
	private String bid_check;

	public Auction_participantDTO() {
	}

	public Auction_participantDTO(int auction_board_num, int bid_price_amount, String buyer_id, String bid_date,
			String bid_check) {
		super();
		this.auction_board_num = auction_board_num;
		this.bid_price_amount = bid_price_amount;
		this.buyer_id = buyer_id;
		this.bid_date = bid_date;
		this.bid_check = bid_check;
	}

	public int getAuction_board_num() {
		return auction_board_num;
	}

	public void setAuction_board_num(int auction_board_num) {
		this.auction_board_num = auction_board_num;
	}

	public int getBid_price_amount() {
		return bid_price_amount;
	}

	public void setBid_price_amount(int bid_price_amount) {
		this.bid_price_amount = bid_price_amount;
	}

	public String getBuyer_id() {
		return buyer_id;
	}

	public void setBuyer_id(String buyer_id) {  
		this.buyer_id = buyer_id;
	}

	public String getBid_date() {
		return bid_date;
	}

	public void setBid_date(String bid_date) {
		this.bid_date = bid_date;
	}

	public String getBid_check() {
		return bid_check;
	}

	public void setBid_check(String bid_check) {
		this.bid_check = bid_check;
	}

}
