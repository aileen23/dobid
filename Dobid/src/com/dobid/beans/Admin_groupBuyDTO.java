package com.dobid.beans;

public class Admin_groupBuyDTO {

	private int basic_board_num;
	private String title;
	private String contents;
	private String member_id;
	private String catalogue;
	private String check;
	private String ing;
	private String image_path;
	private String date;
	

	
	public Admin_groupBuyDTO() {
		// TODO Auto-generated constructor stub
	}



	public Admin_groupBuyDTO(int basic_board_num, String title, String contents, String member_id, String catalogue,
			String check, String ing, String image_path, String date) {
		super();
		this.basic_board_num = basic_board_num;
		this.title = title;
		this.contents = contents;
		this.member_id = member_id;
		this.catalogue = catalogue;
		this.check = check;
		this.ing = ing;
		this.image_path = image_path;
		this.date = date;
	}



}
