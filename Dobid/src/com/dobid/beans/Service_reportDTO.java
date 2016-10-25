package com.dobid.beans;

public class Service_reportDTO {
	private String member_id;
	private String title;
	private String contents;
	private String image_path;
	private String upload_date;
	
	public Service_reportDTO() {

	}

	public Service_reportDTO(String member_id, String title, String contents, String image_path, String upload_date) {
		super();
		this.member_id = member_id;
		this.title = title;
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

	public String getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}
	
	
}
