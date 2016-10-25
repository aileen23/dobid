package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.Find_idDTO;
import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.LoginDTO;
import com.dobid.beans.MemberDTO;
import com.dobid.beans.Service_onoDTO;
import com.dobid.beans.Service_reportDTO;
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
			System.out.println("가입성공");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public String login(LoginDTO login) {
		String loginid = "";
		try {
			loginid = (String) smc.queryForObject("dobid.login", login);
			return loginid;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loginid;
	}
	
	public String findid(Find_idDTO findid) {
		String id = "";
		try {
			id = (String) smc.queryForObject("dobid.find_id", findid);
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}

	public boolean removeAccount(String id) {
		try {
			smc.delete("dobid.removeAccount", id);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}

