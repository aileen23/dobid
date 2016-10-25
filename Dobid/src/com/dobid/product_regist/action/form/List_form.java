package com.dobid.product_regist.action.form;

import org.apache.struts.action.ActionForm;

public class List_form extends ActionForm{
	
	private String search_text;
	private String categori;

	public String getSearch_text() {
		return search_text;
	}

	public void setSearch_text(String search_text) {
		this.search_text = search_text;
	}

	public String getCategori() {
		return categori;
	}

	public void setCategori(String categori) {
		this.categori = categori;
	}

	
}
