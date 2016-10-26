package com.dobid.beans;

public class Admin_freeDTO {
	private int basic_board_num;
	private String member_id;
	private String name;
	private String nickname;
	private String email;
	private String contents;
	private String upload_date;
	private String image_path;
	private String title;
	
	
	public Admin_freeDTO() {
		
	}
	public Admin_freeDTO(int basic_board_num, String member_id, String name, String nickname, String email,
			String contents, String upload_date, String image_path, String title) {
		super();
		this.basic_board_num = basic_board_num;
		this.member_id = member_id;
		this.name = name;
		this.nickname = nickname;
		this.email = email;
		this.contents = contents;
		this.upload_date = upload_date;
		this.image_path = image_path;
		this.title = title;
	}
	public int getBasic_board_num() {
		return basic_board_num;
	}
	public void setBasic_board_num(int basic_board_num) {
		this.basic_board_num = basic_board_num;
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
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUpload_date() {
		return upload_date;
	}
	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
	
}
