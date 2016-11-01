package com.dobid.beans;

import com.dobid.util.Util;

public class Reply_noticeDTO {
   private int no;
   private String name;
   private String content;
   private String num;
   private String nickname;
   
   public Reply_noticeDTO() {
   }

public Reply_noticeDTO(int no, String name, String content, String num, String nickname) {
	super();
	this.no = no;
	this.name = name;
	this.content = content;
	this.num = num;
	this.nickname = nickname;
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

public String getNum() {
	return num;
}

public void setNum(String num) {
	this.num = num;
}

public String getNickname() {
	return nickname;
}

public void setNickname(String nickname) {
	this.nickname = nickname;
}



   
   
}
