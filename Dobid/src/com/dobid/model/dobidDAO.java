package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.Find_idDTO;
import com.dobid.beans.LoginDTO;
import com.dobid.beans.MemberDTO;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.sun.org.apache.regexp.internal.recompile;

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

	public int checkid(String id) {
		try {
			if (smc.queryForObject("dobid.check_id", id) == null) {
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

	public int checknickname(String nickname) {
		try {
			if (smc.queryForObject("dobid.check_nickname", nickname) == null) {
				return 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

}
