package com.dobid.model;

import java.sql.SQLException;
import java.util.List;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_listDTO;
import com.dobid.beans.Auction_list_paramiterDTO;
import com.dobid.beans.Auction_participantDTO;
import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.GroupbuyDTO;
import com.dobid.product_regist.action.SqlMapconfig;
import com.ibatis.sqlmap.client.SqlMapClient;


public class Product_registDAO {
	SqlMapClient smc;

	public Product_registDAO() {
		smc = SqlMapconfig.getSqlMapInstance();
	}
	
	public boolean insert(AuctionDTO inputdate) {
		
		try {
			smc.insert("product_regist.auction_regist",inputdate);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public List<Auction_listDTO> search_list(Auction_list_paramiterDTO search_text){
		List<Auction_listDTO> list = null;
		try {
			list = smc.queryForList("product_regist.search_list",search_text);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public List<GroupbuyDTO> group_search_list(Auction_list_paramiterDTO search_text){
		List<GroupbuyDTO> list = null;
		try {
			list = smc.queryForList("product_regist.group_search_list",search_text);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	public boolean FreeBoardWrite(FreeboardDTO freeboard){
		
		try {
			smc.insert("dobid.FreeBoardWrite", freeboard);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return false;
		
	}
}
