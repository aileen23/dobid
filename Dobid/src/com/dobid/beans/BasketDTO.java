package com.dobid.beans;

public class BasketDTO {
	private String check;
	private int board_num;
	private String member_id;
	public BasketDTO() {
	}

	public BasketDTO(String check, int board_num) {
		super();
		this.check = check;
		this.board_num = board_num;
	}
	
	
	
	public BasketDTO(String check, int board_num, String member_id) {
		super();
		this.check = check;
		this.board_num = board_num;
		this.member_id = member_id;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
}
