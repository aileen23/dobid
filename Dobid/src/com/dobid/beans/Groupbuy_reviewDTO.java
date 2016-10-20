package com.dobid.beans;

public class Groupbuy_reviewDTO {
	private int review_num;
	private int group_board_num;
	private String title;
	private String contents;

	public Groupbuy_reviewDTO() {
	}

	public Groupbuy_reviewDTO(int review_num, int group_board_num, String title, String contents) {
		super();
		this.review_num = review_num;
		this.group_board_num = group_board_num;
		this.title = title;
		this.contents = contents;
	}

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public int getGroup_board_num() {
		return group_board_num;
	}

	public void setGroup_board_num(int group_board_num) {
		this.group_board_num = group_board_num;
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

}
