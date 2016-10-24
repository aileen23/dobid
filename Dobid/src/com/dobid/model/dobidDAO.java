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
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public String login(MemberDTO member) {
		String id = "";
		try {
			id = (String) smc.queryForObject("dobid.login", member);
			return id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
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

