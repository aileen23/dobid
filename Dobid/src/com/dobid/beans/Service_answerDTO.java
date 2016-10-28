package com.dobid.beans;


public class Service_answerDTO {
	private String member_id;
	private String title;
	private String categori;
	private String contents;
	private String image_path;
	private String upload_date;
	private String answer_contents;
	private String answer_date;
	private String admin_ono_selecttext;

	
	public Service_answerDTO() {
	}
	
	
	


	public Service_answerDTO(String admin_ono_selecttext, String categori) {
		this.admin_ono_selecttext = admin_ono_selecttext;
		this.categori = categori;
	}
	


	
	public Service_answerDTO(String upload_date, String answer_contents, String answer_date) {
		this.upload_date = upload_date;
		this.answer_contents = answer_contents;
		this.answer_date = answer_date;
	}
	

	public Service_answerDTO(String member_id, String title, String categori, String contents, String image_path,
			String upload_date) {
		super();
		this.member_id = member_id;
		this.title = title;
		this.categori = categori;
		this.contents = contents;
		this.image_path = image_path;
		this.upload_date = upload_date;
	}


	public Service_answerDTO(String member_id, String title, String categori, String contents, String image_path,
			String upload_date, String answer_contents, String answer_date) {
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

	public String getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(String upload_date) {
		this.upload_date = upload_date;
	}

	public String getAnswer_contents() {
		return answer_contents;
	}

	public void setAnswer_contents(String answer_contents) {
		this.answer_contents = answer_contents;
	}

	public String getAnswer_date() {
		return answer_date;
	}

	public void setAnswer_date(String answer_date) {
		this.answer_date = answer_date;
	}

	public String getAdmin_ono_selecttext() {
		return admin_ono_selecttext;
	}
	public void setAdmin_ono_selecttext(String admin_ono_selecttext) {
		this.admin_ono_selecttext = admin_ono_selecttext;
	}

}
