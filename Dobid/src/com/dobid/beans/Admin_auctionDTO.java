package com.dobid.beans;

public class Admin_auctionDTO {

	private int basic_board_num;
	private String title;
	private String contents;
	private String member_id;
	private String catalogue;
	private String check;
	private String ing;
	private String image_path;
	private String regist_date;
	

	
	public Admin_auctionDTO() {
		// TODO Auto-generated constructor stub
	}



	public Admin_auctionDTO(int basic_board_num, String title, String contents, String member_id, String catalogue,
			String check, String ing, String image_path, String regist_date) {
		super();
		this.basic_board_num = basic_board_num;
		this.title = title;
		this.contents = contents;
		this.member_id = member_id;
		this.catalogue = catalogue;
		this.check = check;
		this.ing = ing;
		this.image_path = image_path;
		this.regist_date = regist_date;
	}



	public int getBasic_board_num() {
		return basic_board_num;
	}



	public void setBasic_board_num(int basic_board_num) {
		this.basic_board_num = basic_board_num;
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



	public String getMember_id() {
		return member_id;
	}



	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}



	public String getCatalogue() {
		return catalogue;
	}



	public void setCatalogue(String catalogue) {
		this.catalogue = catalogue;
	}



	public String getCheck() {
		return check;
	}



	public void setCheck(String check) {
		this.check = check;
	}



	public String getIng() {
		return ing;
	}



	public void setIng(String ing) {
		this.ing = ing;
	}



	public String getImage_path() {
		return image_path;
	}



	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}



	public String getDate() {
		return regist_date;
	}



	public void setDate(String regist_date) {
		this.regist_date = regist_date;
	}


	
	
	
}
