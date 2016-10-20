package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.memberDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class dobidDAO {
	SqlMapClient smc;

	public dobidDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public boolean insert(memberDTO member) {
		try {
			smc.insert("dobid.registAccount", member);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
