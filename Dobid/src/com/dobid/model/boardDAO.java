package com.dobid.model;

import java.sql.SQLException;
import java.util.List;

import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

public class boardDAO {
	SqlMapClient smc;

	public boardDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}
	
	public List<NoticeboardDTO> NoticeSelectAll(){
		List<NoticeboardDTO> list=null;
		try {
			list = smc.queryForList("board.NoticeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<FreeboardDTO> FreeSelectAll(){
		List<FreeboardDTO> list=null;
		try {
			list = smc.queryForList("board.FreeSelectAll");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean FreeBoardWrite(FreeboardDTO freeboard) {

		try {
			smc.insert("board.FreeBoardWrite", freeboard);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}
	
	
	public NoticeboardDTO NoticeSelect(String num){
		NoticeboardDTO noticeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			noticeboardDTO=(NoticeboardDTO)smc.queryForObject("board.NoticeSelect", bagic_num);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return noticeboardDTO;
			
		
	}
	public FreeboardDTO FreeSelect(String num){
		FreeboardDTO freeboardDTO = null;
		try {
			int bagic_num = Integer.parseInt(num);
			freeboardDTO= (FreeboardDTO)smc.queryForObject("board.FreeSelect", bagic_num);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return freeboardDTO;	
	}
		
	
	public boolean NoticeSelectCnt(String num){
		
		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.NoticeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
		
	}
	public boolean FreeSelectCnt(String num){
		
		try {
			int bagic_num = Integer.parseInt(num);
			smc.update("board.FreeSelectCnt", bagic_num);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
