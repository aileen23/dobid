package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.MemberDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;



public class Mypage_DAO {

	SqlMapClient smc;

	public Mypage_DAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public MemberDTO select(String id) {
		MemberDTO member = null;

		try {
			member = (MemberDTO) smc.queryForObject("myprofile.select",id);
			return member;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String update(MemberDTO dto){
		
		try {
			smc.queryForObject("myprofile.update",dto);
			return "업데이트성공";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
