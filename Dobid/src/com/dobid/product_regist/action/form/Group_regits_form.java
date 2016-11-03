package com.dobid.product_regist.action.form;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class Group_regits_form extends ActionForm{

	private String cate;
	private String title_text;
	private String count_text;
	//private FormFile main_file;
	//private List<FormFile> sub_file;
	private String start_cach;
	private String day;
	private String hour;
	private String minute;
	private String textarea;
	private String step_participant;
	private String step_discoun;
	
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

	/*public FormFile getMain_file() {
		return main_file;
	}





	public void setMain_file(FormFile main_file) {
		this.main_file = main_file;
	}










	public List<FormFile> getSub_file() {
		return sub_file;
	}





	public void setSub_file(List<FormFile> sub_file) {
		this.sub_file = sub_file;
	}*/
	
	public String getDay() {
		return day;
	}
	public String getStart_cach() {
		return start_cach;
	}
	public void setStart_cach(String start_cach) {
		this.start_cach = start_cach;
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
	public void setTextarea(String text) {
		this.textarea = text;
	}
	public String getStep_participant() {
		return step_participant;
	}
	public void setStep_participant(String step_participant) {
		this.step_participant = step_participant;
	}
	public String getStep_discoun() {
		return step_discoun;
	}
	public void setStep_discoun(String step_discoun) {
		this.step_discoun = step_discoun;
	}

}
