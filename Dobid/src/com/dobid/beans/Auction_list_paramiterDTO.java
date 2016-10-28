package com.dobid.beans;

public class Auction_list_paramiterDTO {

	private String search;
	private String categori;
	private int startCount;
	private int endCount;
	private String check;
	private String oldcheck;
	
	
	public Auction_list_paramiterDTO() {
		super();
	}
	
	public Auction_list_paramiterDTO(String search, String categori,
			int startCount, int endCount) {
		super();
		this.search = search;
		this.categori = categori;
		this.startCount = startCount;
		this.endCount = endCount;
	}

	
	public Auction_list_paramiterDTO(String search, String categori,
			int startCount, int endCount, String check) {
		super();
		this.search = search;
		this.categori = categori;
		this.startCount = startCount;
		this.endCount = endCount;
		this.check = check;
	}

	
	public Auction_list_paramiterDTO(String search, String categori,
			int startCount, int endCount, String check, String oldcheck) {
		super();
		this.search = search;
		this.categori = categori;
		this.startCount = startCount;
		this.endCount = endCount;
		this.check = check;
		this.oldcheck = oldcheck;
	}

	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	
	public String getCategori() {
		return categori;
	}

	public void setCategori(String categori) {
		this.categori = categori;
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

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public String getOldcheck() {
		return oldcheck;
	}

	public void setOldcheck(String oldcheck) {
		this.oldcheck = oldcheck;
	}
	
	
}
