package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.MemberDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class dobidDAO {
	SqlMapClient smc;

	public dobidDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public boolean insert(MemberDTO member) {
		try {
			smc.insert("dobid.registAccount", member);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public String login(MemberDTO member){
		String id = "";
		try {
			id = (String) smc.queryForObject("dobid.login", member);
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
