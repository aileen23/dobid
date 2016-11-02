package com.dobid.beans;

public class Admin_groupBuyDTO {

	private int auction_board_num;
	private String title;
	private String contents;
	private String seller_id;
	private String categori;
	private String bid_check;
	private String main_image_path;
	private String regist_date;
	private String hot_check;
	

	
	public Admin_groupBuyDTO() {
		// TODO Auto-generated constructor stub
	}



	public Admin_groupBuyDTO(int auction_board_num, String title, String contents, String seller_id, String categori,
			String bid_check, String main_image_path, String regist_date, String hot_check) {
		super();
		this.auction_board_num = auction_board_num;
		this.title = title;
		this.contents = contents;
		this.seller_id = seller_id;
		this.categori = categori;
		this.bid_check = bid_check;
		this.main_image_path = main_image_path;
		this.regist_date = regist_date;
		this.hot_check = hot_check;
	}



	public Admin_groupBuyDTO(String contents, String categori) {
		super();
		this.contents = contents;
		this.categori = categori;
	}



	public int getAuction_board_num() {
		return auction_board_num;
	}



	public void setAuction_board_num(int auction_board_num) {
		this.auction_board_num = auction_board_num;
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



	public String getSeller_id() {
		return seller_id;
	}



	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}



	public String getCategori() {
		return categori;
	}



	public void setCategori(String categori) {
		this.categori = categori;
	}



	public String getBid_check() {
		return bid_check;
	}



	public void setBid_check(String bid_check) {
		this.bid_check = bid_check;
	}



	public String getMain_image_path() {
		return main_image_path;
	}



	public void setMain_image_path(String main_image_path) {
		this.main_image_path = main_image_path;
	}



	public String getRegist_date() {
		return regist_date;
	}



	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}



	public String getHot_check() {
		return hot_check;
	}



	public void setHot_check(String hot_check) {
		this.hot_check = hot_check;
	}



	
	
	

}
