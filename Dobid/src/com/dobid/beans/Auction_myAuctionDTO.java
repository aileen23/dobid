package com.dobid.beans;

public class Auction_myAuctionDTO {

	public int getAuction_board_num() {
		return auction_board_num;
	}
	public void setAuction_board_num(int auction_board_num) {
		this.auction_board_num = auction_board_num;
	}
	public String getMain_image_path() {
		return main_image_path;
	}
	public void setMain_image_path(String main_image_path) {
		this.main_image_path = main_image_path;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getHot_check() {
		return hot_check;
	}
	public void setHot_check(String hot_check) {
		this.hot_check = hot_check;
	}
	public int getBid_price_amount() {
		return bid_price_amount;
	}
	public void setBid_price_amount(int bid_price_amount) {
		this.bid_price_amount = bid_price_amount;
	}
	public Auction_myAuctionDTO(int auction_board_num, String main_image_path, String title, String end_date,
			String hot_check, int bid_price_amount) {
		super();
		this.auction_board_num = auction_board_num;
		this.main_image_path = main_image_path;
		this.title = title;
		this.end_date = end_date;
		this.hot_check = hot_check;
		this.bid_price_amount = bid_price_amount;
	}
	private int auction_board_num;
	private String main_image_path;
	private String title;
	private String end_date;
	private String hot_check;
	private int bid_price_amount;
}