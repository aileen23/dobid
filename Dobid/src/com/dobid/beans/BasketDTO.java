package com.dobid.beans;

public class BasketDTO {
	private char check;
	private int board_num;

	public BasketDTO() {
	}

	public BasketDTO(char check, int board_num) {
		super();
		this.check = check;
		this.board_num = board_num;
	}

	public char getCheck() {
		return check;
	}

	public void setCheck(char check) {
		this.check = check;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

}
