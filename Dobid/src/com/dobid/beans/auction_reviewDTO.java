package com.dobid.beans;

public class auction_reviewDTO {
	private int review_num;
	private int auction_board_num;
	private String title;
	private String contents;

	public auction_reviewDTO() {
	}

	public int getReview_num() {
		return review_num;
	}

	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}

	public int getAuction_board_num() {
		return auction_board_num;
	}

	public void setAuction_board_num(int auction_board_num) {
		this.auction_board_num = auction_board_num;
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

	public auction_reviewDTO(int review_num, int auction_board_num, String title, String contents) {
		super();
		this.review_num = review_num;
		this.auction_board_num = auction_board_num;
		this.title = title;
		this.contents = contents;
	}

}
