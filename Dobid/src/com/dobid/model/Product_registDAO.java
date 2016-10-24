package com.dobid.model;

import java.sql.SQLException;
import java.util.List;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_listDTO;
import com.dobid.beans.Auction_list_paramiterDTO;
import com.dobid.beans.Auction_participantDTO;
import com.dobid.beans.Auction_updateDTO;
import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.GroupbuyDTO;
import com.dobid.beans.Groupbuy_participantDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;


public class Product_registDAO {
	SqlMapClient smc;

	public Product_registDAO() {
		smc = SqlMapConfig.getSqlMapInstance();
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
	
	public AuctionDTO auction_object_select(String id){
		AuctionDTO auctionDTO = null;
		try {
			auctionDTO = (AuctionDTO) smc.queryForObject("product_regist.auction_object_select",Integer.parseInt(id));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return auctionDTO;
	}
	
	public String user_name_select(String member_id) {
		
		String a = null;
		try {
			a = (String)smc.queryForObject("product_regist.user_id_select",member_id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return a;
	}
	public GroupbuyDTO groupbuy_view(int id) {
		GroupbuyDTO dto = null;
		try {
			dto = (GroupbuyDTO)smc.queryForObject("product_regist.groupbuy_view",id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dto;
	}
	
	public boolean groupbuy_regist(Groupbuy_participantDTO dto) {
		
		try {
			smc.insert("product_regist.groupbuy_regist",dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean groupbuy_count(int number) {
		try {
			smc.update("product_regist.groupbuy_count_update",number);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean auction_buy(Auction_participantDTO dto) {
		try {
			smc.insert("product_regist.auction_buy_d",dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	public boolean auction_update(Auction_updateDTO dto) {
		try {
			smc.update("product_regist.auction_buy_update",dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
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
