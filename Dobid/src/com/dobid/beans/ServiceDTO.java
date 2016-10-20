package com.dobid.beans;

import java.sql.Date;

public class ServiceDTO {
	private String member_id;
	private String title;
	private String categori;
	private String contents;
	private String image_path;
	private Date upload_date;

	public ServiceDTO() {
	}

	public ServiceDTO(String member_id, String title, String categori, String contents, String image_path,
			Date upload_date) {
		super();
		this.member_id = member_id;
		this.title = title;
		this.categori = categori;
		this.contents = contents;
		this.image_path = image_path;
		this.upload_date = upload_date;
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

	public String getCategori() {
		return categori;
	}

	public void setCategori(String categori) {
		this.categori = categori;
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

	public Date getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}

}
