package com.dobid.beans;

public class Admin_auctionDTO {

	private int basic_board_num;
	private String title;
	private String contents;
	private String member_id;
	private String name;
	private String catalogue;
	private String ing;
	private String image_path;
	
	public Admin_auctionDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public Admin_auctionDTO(int basic_board_num, String title, String contents, String member_id, String name,
			String catalogue, String ing, String image_path) {
		super();
		this.basic_board_num = basic_board_num;
		this.title = title;
		this.contents = contents;
		this.member_id = member_id;
		this.name = name;
		this.catalogue = catalogue;
		this.ing = ing;
		this.image_path = image_path;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCatalogue() {
		return catalogue;
	}

	public void setCatalogue(String catalogue) {
		this.catalogue = catalogue;
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
	
	
	
	
}
