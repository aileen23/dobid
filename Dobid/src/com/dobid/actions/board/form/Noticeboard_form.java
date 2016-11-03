package com.dobid.actions.board.form;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

public class Noticeboard_form extends ActionForm {

	private String title;
	private String contents;
	private FormFile image_path;

	public Noticeboard_form() {
		// TODO Auto-generated constructor stub
	}
	public Noticeboard_form(String title, String contents, FormFile image_path) {
		super();
		this.title = title;
		this.contents = contents;
		this.image_path = image_path;
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

	public FormFile getImage_path() {
		return image_path;
	}

	public void setImage_path(FormFile image_path) {
		this.image_path = image_path;
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
