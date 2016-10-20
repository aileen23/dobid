package com.dobid.beans;

import java.sql.Date;

public class FreeboardDTO {
	private int basic_board_num;
	private String member_id;
	private String title;
	private String contents;
	private String image_path;
	private int cilck_count;
	private Date upload_date;

	public FreeboardDTO() {
	}

	public FreeboardDTO(int basic_board_num, String member_id, String title, String contents, String image_path,
			int cilck_count, Date upload_date) {
		super();
		this.basic_board_num = basic_board_num;
		this.member_id = member_id;
		this.title = title;
		this.contents = contents;
		this.image_path = image_path;
		this.cilck_count = cilck_count;
		this.upload_date = upload_date;
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

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	public int getCilck_count() {
		return cilck_count;
	}

	public void setCilck_count(int cilck_count) {
		this.cilck_count = cilck_count;
	}

	public Date getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}

}
