package com.dobid.beans;

public class Auction_list_paramiterDTO {

	private String search;
	private int startCount;
	private int endCount;
	
	
	
	public Auction_list_paramiterDTO() {
		super();
	}
	public Auction_list_paramiterDTO(String search, int startCount, int endCount) {
		super();
		this.search = search;
		this.startCount = startCount;
		this.endCount = endCount;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getStartCount() {
		return startCount;
	}
	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}
	public int getEndCount() {
		return endCount;
	}
	public void setEndCount(int endCount) {
		this.endCount = endCount;
	}
	
}
