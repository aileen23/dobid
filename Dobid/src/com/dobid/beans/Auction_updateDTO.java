/*
 * 2016-10-24
 * 작성자 :  신유동
 * 경매 레코드에 최고 금액과 해당 유저 아이디로 업데이트 하기 위한 DTO.
 * 
 * */

package com.dobid.beans;

public class Auction_updateDTO {

	int price;
	String user_id;
	int number;
	public Auction_updateDTO(int price, String user_id, int number) {
		super();
		this.price = price;
		this.user_id = user_id;
		this.number = number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	
	
	
}
