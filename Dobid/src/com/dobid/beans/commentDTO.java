package com.dobid.beans;

import java.sql.Date;

public class commentDTO {
	private int comment_num;
	private String member_id;
	private String contents;
	private Date upload_date;

	public commentDTO() {
	}

	public commentDTO(int comment_num, String member_id, String contents, Date upload_date) {
		super();
		this.comment_num = comment_num;
		this.member_id = member_id;
		this.contents = contents;
		this.upload_date = upload_date;
	}

	public int getComment_num() {
		return comment_num;
	}

	public void setComment_num(int comment_num) {
		this.comment_num = comment_num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getUpload_date() {
		return upload_date;
	}

	public void setUpload_date(Date upload_date) {
		this.upload_date = upload_date;
	}

}
