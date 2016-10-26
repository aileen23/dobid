package com.dobid.product_regist.action.form;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class Product_regist_form extends ActionForm{
	
	private String cate;
	private String title_text;
	private String count_text;
	private FormFile main_file;
	private FormFile sub_file;
	private String auction_check;
	private String start_cach;
	private String day;
	private String hour;  
	private String minute;
	private String textarea;
	
	
	
	
	
	public String getCate() {
		return cate;
	}





	public void setCate(String cate) {
		this.cate = cate;
	}





	public String getTitle_text() {
		return title_text;
	}





	public void setTitle_text(String title_text) {
		this.title_text = title_text;
	}





	public String getCount_text() {
		return count_text;
	}





	public void setCount_text(String count_text) {
		this.count_text = count_text;
	}





	public FormFile getMain_file() {
		return main_file;
	}





	public void setMain_file(FormFile main_file) {
		this.main_file = main_file;
	}





	public FormFile getSub_file() {
		return sub_file;
	}





	public void setSub_file(FormFile sub_file) {
		this.sub_file = sub_file;
	}





	public String getAuction_check() {
		return auction_check;
	}





	public void setAuction_check(String auction_check) {
		this.auction_check = auction_check;
	}





	public String getStart_cach() {
		return start_cach;
	}





	public void setStart_cach(String start_cach) {
		this.start_cach = start_cach;
	}





	public String getDay() {
		return day;
	}





	public void setDay(String day) {
		this.day = day;
	}





	public String getHour() {
		return hour;
	}





	public void setHour(String hour) {
		this.hour = hour;
	}





	public String getMinute() {
		return minute;
	}





	public void setMinute(String minute) {
		this.minute = minute;
	}





	public String getTextarea() {
		return textarea;
	}





	public void setTextarea(String textarea) {
		this.textarea = textarea;
	}



	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		try {
		     request.setCharacterEncoding("UTF-8");
		     } catch (UnsupportedEncodingException e) {
		       e.printStackTrace();
		     }


		super.reset(mapping, request);
	}

}
