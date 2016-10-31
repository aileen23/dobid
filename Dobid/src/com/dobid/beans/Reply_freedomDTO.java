package com.dobid.beans;

import com.dobid.util.Util;

public class ReplyDTO {
   private int no;
   private String name;
   private String content;
   private String page_type;
   private String num;
   
   public ReplyDTO() {
   }




public ReplyDTO(int no, String name, String content, String page_type, String num) {
	super();
	this.no = no;
	this.name = name;
	this.content = content;
	this.page_type = page_type;
	this.num = num;
}




public int getNo() {
	return no;
}




public void setNo(int no) {
	this.no = no;
}




public String getName() {
	return name;
}




public void setName(String name) {
	this.name = name;
}




public String getContent() {
	return content;
}




public void setContent(String content) {
	this.content = Util.toJS(content);
}




public String getPage_type() {
	return page_type;
}




public void setPage_type(String page_type) {
	this.page_type = page_type;
}




public String getNum() {
	return num;
}




public void setNum(String num) {
	this.num = num;
}




   
   
}
