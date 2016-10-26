package com.dobid.beans;

public class Auction_myAuctionDTO {

	private int auction_board_num;
	private String main_image_path;
	private String title;
	private int dib_price_amount;
	private String end_date;
	private String hot_check;

	public Auction_myAuctionDTO(int auction_board_num, String main_image_path, String title, int dib_price_amount,
			String end_date, String hot_check) {
		super();
		this.auction_board_num = auction_board_num;
		this.main_image_path = main_image_path;
		this.title = title;
		this.dib_price_amount = dib_price_amount;
		this.end_date = end_date;
		this.hot_check = hot_check;
	}
	
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

	public int getDib_price_amount() {
		return dib_price_amount;
	}

	public void setDib_price_amount(int dib_price_amount) {
		this.dib_price_amount = dib_price_amount;
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

}
