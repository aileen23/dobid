package com.dobid.model;

import java.sql.SQLException;

import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class ServiceDAO {
	SqlMapClient smc;

	public ServiceDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	
	public boolean ServiceOno(Service_answerDTO serviceAnswer) {

		try {
			smc.insert("service.serviceOno", serviceAnswer);
			System.out.println("입력성공");
			return true;
		} catch (SQLException e) {e.printStackTrace();
		}
		System.out.println("입력실패");
		return false;
	}

	public boolean ServiceReport(Service_reportDTO serverReport) {


		try {
			smc.insert("service.serviceReport", serverReport);
			System.out.println("입력성공");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("입력실패");
		return false;
	}
}


