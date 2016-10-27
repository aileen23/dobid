package com.dobid.beans;

public class ReplyDTO {
   private int no;
   private String name;
   private String content;
   
   public ReplyDTO() {
   }

public ReplyDTO(int no, String name, String content) {
	this.no = no;
	this.name = name;
	this.content = content;
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
	this.content = content;
}
   
   
   
}
