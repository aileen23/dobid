package com.dobid.beans;

public class Auction_listDTO {

	private String num;
	private String auction_board_num;
	private String email;
	private String name;
	private String start_amount;
	private String highest_price;
	private String regist_date;
	private String end_date;
	private String main_image_path;
	private String title;
	
	
	
	public Auction_listDTO() {
		super();
	}
	public Auction_listDTO(String num,String auction_board_num,String email, String name, String start_amount,
			String highest_price, String regist_date, String end_date,
			String main_image_path, String title) {
		super();
		this.num = num;
		this.auction_board_num = auction_board_num;
		this.email = email;
		this.name = name;
		this.start_amount = start_amount;
		this.highest_price = highest_price;
		this.regist_date = regist_date;
		this.end_date = end_date;
		this.main_image_path = main_image_path;
		this.title = title;
	}
	


	public String getAuction_board_num() {
		return auction_board_num;
	}
	public void setAuction_board_num(String auction_board_num) {
		this.auction_board_num = auction_board_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStart_amount() {
		return start_amount;
	}
	public void setStart_amount(String start_amount) {
		this.start_amount = start_amount;
	}
	public String getHighest_price() {
		return highest_price;
	}
	public void setHighest_price(String highest_price) {
		this.highest_price = highest_price;
	}
	public String getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getMain_image_path() {
		return main_image_path;
	}
	public void setMain_image_path(String main_image_path) {
		this.main_image_path = main_image_path;
	}
	
	
	
}
