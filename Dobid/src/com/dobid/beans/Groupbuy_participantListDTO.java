package com.dobid.beans;

public class Groupbuy_participantListDTO {
	
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

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(String discount_price) {
		this.discount_price = discount_price;
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

	private int groupbuy_board_num;
	private int buy_price_amount;
	private String title;
	private String discount_price;
	private String end_date;
	private String main_image_path;
	
	public Groupbuy_participantListDTO(int groupbuy_board_num, int buy_price_amount, String title,
			String discount_price, String end_date, String main_image_path) {
		super();
		this.groupbuy_board_num = groupbuy_board_num;
		this.buy_price_amount = buy_price_amount;
		this.title = title;
		this.discount_price = discount_price;
		this.end_date = end_date;
		this.main_image_path = main_image_path;
	}

	public Groupbuy_participantListDTO() {
	}

}
