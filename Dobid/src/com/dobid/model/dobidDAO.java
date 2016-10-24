package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.FreeboardDTO;
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

	public String login(String id, String pass) {
		String loginid = "";
		try {
			loginid = (String) smc.queryForObject("dobid.login", id, pass);
			return loginid;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loginid;
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


	public boolean ServiceOno(Service_onoDTO serverOno) {

		try {
			smc.insert("service.ServiceOno", serverOno);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public boolean ServiceReport(Service_reportDTO report) {


		try {
			smc.insert("service.serviceReport", report);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
}

