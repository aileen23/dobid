package com.dobid.beans;

import java.sql.Date;

public class Service_answerDTO {
	private String member_id;
	private String title;
	private String categori;
	private String contents;
	private String image_path;
	private Date upload_date;
	private String answer_contents;
	private Date answer_date;

	public Service_answerDTO() {
	}
	public Service_answerDTO(String title, String categori, String contents,Date upload_date, String answer_contents, Date answer_date) {
		super();
		this.title = title;
		this.categori = categori;
		this.contents = contents;
		this.upload_date = upload_date;
		this.answer_contents = answer_contents;
		this.answer_date = answer_date;
	}
	public Service_answerDTO(String member_id, String title, String categori, String contents, String image_path,
			Date upload_date, String answer_contents, Date answer_date) {
		super();
		this.member_id = member_id;
		this.title = title;
		this.categori = categori;
		this.contents = contents;
		this.image_path = image_path;
		this.upload_date = upload_date;
		this.answer_contents = answer_contents;
		this.answer_date = answer_date;
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

	public String getAnswer_contents() {
		return answer_contents;
	}

	public void setAnswer_contents(String answer_contents) {
		this.answer_contents = answer_contents;
	}

	public Date getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(Date answer_date) {
		this.answer_date = answer_date;
	}

}
