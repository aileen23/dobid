package com.dobid.beans;

public class DelidDTO {
	private String member_id;
	private String withdrawal;

	public DelidDTO() {
	}

	public DelidDTO(String member_id, String withdrawal) {
		super();
		this.member_id = member_id;
		this.withdrawal = withdrawal;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getWithdrawal() {
		return withdrawal;
	}

	public void setWithdrawal(String withdrawal) {
		this.withdrawal = withdrawal;
	}

}
