package com.dobid.beans;

import java.sql.Date;

public class auctionDTO {
	private int auction_board_num;
	private String seller_id;
	private String title;
	private String contents;
	private String main_image_path;
	private String explain_image_path;
	private int start_amount;
	private String categori;
	private int amount;
	private Date end_date;
	private Date regist_date;
	private int highest_price;
	private String highest_price_id;
	private char hot_check;
	private char used_check;

	public auctionDTO() {
	}

	public auctionDTO(int auction_board_num, String seller_id, String title, String contents, String main_image_path,
			String explain_image_path, int start_amount, String categori, int amount, Date end_date, Date regist_date,
			int highest_price, String highest_price_id, char hot_check, char used_check) {
		super();
		this.auction_board_num = auction_board_num;
		this.seller_id = seller_id;
		this.title = title;
		this.contents = contents;
		this.main_image_path = main_image_path;
		this.explain_image_path = explain_image_path;
		this.start_amount = start_amount;
		this.categori = categori;
		this.amount = amount;
		this.end_date = end_date;
		this.regist_date = regist_date;
		this.highest_price = highest_price;
		this.highest_price_id = highest_price_id;
		this.hot_check = hot_check;
		this.used_check = used_check;
	}

	public int getAuction_board_num() {
		return auction_board_num;
	}

	public void setAuction_board_num(int auction_board_num) {
		this.auction_board_num = auction_board_num;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getMain_image_path() {
		return main_image_path;
	}

	public void setMain_image_path(String main_image_path) {
		this.main_image_path = main_image_path;
	}

	public String getExplain_image_path() {
		return explain_image_path;
	}

	public void setExplain_image_path(String explain_image_path) {
		this.explain_image_path = explain_image_path;
	}

	public int getStart_amount() {
		return start_amount;
	}

	public void setStart_amount(int start_amount) {
		this.start_amount = start_amount;
	}

	public String getCategori() {
		return categori;
	}

	public void setCategori(String categori) {
		this.categori = categori;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}

	public Date getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}

	public int getHighest_price() {
		return highest_price;
	}

	public void setHighest_price(int highest_price) {
		this.highest_price = highest_price;
	}

	public String getHighest_price_id() {
		return highest_price_id;
	}

	public void setHighest_price_id(String highest_price_id) {
		this.highest_price_id = highest_price_id;
	}

	public char getHot_check() {
		return hot_check;
	}

	public void setHot_check(char hot_check) {
		this.hot_check = hot_check;
	}

	public char getUsed_check() {
		return used_check;
	}

	public void setUsed_check(char used_check) {
		this.used_check = used_check;
	}

}
