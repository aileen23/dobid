package com.dobid.beans;

import java.sql.Date;

public class GroupbuyDTO {
	
	private int num;
	private int groupbuy_board_num;
	private String title;
	private String contents;
	private String main_image_path;
	private String explain_image_path;
	private int participant_num;
	private String categori;
	private int amount;
	private String end_date;
	private String regist_date;
	private int step_participant;
	private int step_discount;
	private int first_price;
	private int discount_price;
	private int now_step;
	private String BUY_CHECK;

	public GroupbuyDTO() {
	}

	
	
	public GroupbuyDTO(int num,int groupbuy_board_num, String title, 
			String main_image_path, int participant_num,String categori, String end_date,
			String regist_date, int discount_price) {
		super();
		this.num = num;
		this.groupbuy_board_num = groupbuy_board_num;
		this.title = title;
		this.participant_num = participant_num;
		this.main_image_path = main_image_path;
		this.categori = categori;
		this.end_date = end_date;
		this.regist_date = regist_date;
		this.discount_price = discount_price;
	}



	public GroupbuyDTO(int groupbuy_board_num, String title, String contents, String main_image_path,
			String explain_image_path, int participant_num, String categori, int amount, String end_date,
			String regist_date, int step_participant, int step_discount, int first_price, int discount_price,
			int now_step) {
		super();
		this.groupbuy_board_num = groupbuy_board_num;
		this.title = title;
		this.contents = contents;
		this.main_image_path = main_image_path;
		this.explain_image_path = explain_image_path;
		this.participant_num = participant_num;
		this.categori = categori;
		this.amount = amount;
		this.end_date = end_date;
		this.regist_date = regist_date;
		this.step_participant = step_participant;
		this.step_discount = step_discount;
		this.first_price = first_price;
		this.discount_price = discount_price;
		this.now_step = now_step;
	}

	
	
	public GroupbuyDTO(int num, int groupbuy_board_num, String title,
			String contents, String main_image_path, String explain_image_path,
			int participant_num, String categori, int amount, String end_date,
			String regist_date, int step_participant, int step_discount,
			int first_price, int discount_price, int now_step, String bUY_CHECK) {
		super();
		this.num = num;
		this.groupbuy_board_num = groupbuy_board_num;
		this.title = title;
		this.contents = contents;
		this.main_image_path = main_image_path;
		this.explain_image_path = explain_image_path;
		this.participant_num = participant_num;
		this.categori = categori;
		this.amount = amount;
		this.end_date = end_date;
		this.regist_date = regist_date;
		this.step_participant = step_participant;
		this.step_discount = step_discount;
		this.first_price = first_price;
		this.discount_price = discount_price;
		this.now_step = now_step;
		BUY_CHECK = bUY_CHECK;
	}

	

	public GroupbuyDTO(String title, String contents, String main_image_path,
			String explain_image_path, String categori, int amount,
			String end_date, String regist_date, int step_participant,
			int step_discount, int first_price, int discount_price) {
		super();
		this.title = title;
		this.contents = contents;
		this.main_image_path = main_image_path;
		this.explain_image_path = explain_image_path;
		this.categori = categori;
		this.amount = amount;
		this.end_date = end_date;
		this.regist_date = regist_date;
		this.step_participant = step_participant;
		this.step_discount = step_discount;
		this.first_price = first_price;
		this.discount_price = discount_price;
	}



	public int getNum() {
		return num;
	}



	public void setNum(int num) {
		this.num = num;
	}



	public int getGroupbuy_board_num() {
		return groupbuy_board_num;
	}

	public void setGroupbuy_board_num(int groupbuy_board_num) {
		this.groupbuy_board_num = groupbuy_board_num;
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

	public int getParticipant_num() {
		return participant_num;
	}

	public void setParticipant_num(int participant_num) {
		this.participant_num = participant_num;
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

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getRegist_date() {
		return regist_date;
	}

	public void setRegist_date(String regist_date) {
		this.regist_date = regist_date;
	}

	public int getStep_participant() {
		return step_participant;
	}

	public void setStep_participant(int step_participant) {
		this.step_participant = step_participant;
	}

	public int getStep_discount() {
		return step_discount;
	}

	public void setStep_discount(int step_discount) {
		this.step_discount = step_discount;
	}

	public int getFirst_price() {
		return first_price;
	}

	public void setFirst_price(int first_price) {
		this.first_price = first_price;
	}

	public int getDiscount_price() {
		return discount_price;
	}

	public void setDiscount_price(int discount_price) {
		this.discount_price = discount_price;
	}

	public int getNow_step() {
		return now_step;
	}

	public void setNow_step(int now_step) {
		this.now_step = now_step;
	}



	public String getBUY_CHECK() {
		return BUY_CHECK;
	}



	public void setBUY_CHECK(String bUY_CHECK) {
		BUY_CHECK = bUY_CHECK;
	}
	
}
