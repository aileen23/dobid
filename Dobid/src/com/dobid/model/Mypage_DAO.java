package com.dobid.model;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_ChargeDTO;
import com.dobid.beans.Auction_myAuctionDTO;
import com.dobid.beans.ChargeDTO;
import com.dobid.beans.ChargelistDTO;
import com.dobid.beans.MemberDTO;
import com.dobid.beans.MessageDTO;
import com.dobid.beans.Service_answerDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;
import oracle.net.jdbc.TNSAddress.AddressList;

public class Mypage_DAO {

	SqlMapClient smc;

	public Mypage_DAO() {
		smc = SqlMapConfig.getSqlMapInstance();
	}

	public MemberDTO select(String id) {
		MemberDTO member = null;

		try {
			member = (MemberDTO) smc.queryForObject("myprofile.select", id);
			return member;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public String update(MemberDTO dto) {

		try {
			smc.queryForObject("myprofile.update", dto);
			return "업데이트성공";
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<AuctionDTO> basketSelect(String id) {
		List<AuctionDTO> list = null;
		try {
			list = smc.queryForList("myprofile.basketSelect", id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}

	public List<Auction_myAuctionDTO> auctionSelect(String id) {
		List<Auction_myAuctionDTO> list = null;
		try {
			list = smc.queryForList("myprofile.auctionSelect", id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	public List<AuctionDTO> salesSelect(String id) {
		List<AuctionDTO> list = null;
		try {
			list = smc.queryForList("myprofile.salesSelect", id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	@SuppressWarnings("null")
	public List<ChargelistDTO> chargeSelect(String id) {
		List<Auction_ChargeDTO> list = null;
		List<ChargeDTO> list2 = null;
		List<ChargelistDTO> result = new ArrayList<ChargelistDTO>();
		
		try {
			list = smc.queryForList("myprofile.usecharge", id);
			list2 = smc.queryForList("myprofile.chargeSelect", id);
			if (!(list.equals(null) || list2.equals(null))) {
				for (int i = 0; i < list.size(); i++) {
					Date date = list.get(i).getEnd_date();
					String title = list.get(i).getTitle();
					int price = list.get(i).getHighest_price();
					
					result.add(new ChargelistDTO("사용", date, title, price));
				}
				for (int i = 0; i < list2.size(); i++) {
					Date date = list2.get(i).getCharge_date();
					String title = list2.get(i).getCharge_type();
					int price = list2.get(i).getCharge_before_amount();
					
					result.add(new ChargelistDTO("충전", date, title, price));
				}
			}
			if (!result.equals(null)) {
				Comparator<ChargelistDTO> sort = new Comparator<ChargelistDTO>() {
					public int compare(ChargelistDTO obj1, ChargelistDTO obj2) {
						return obj2.getCharge_time().compareTo(obj1.getCharge_time());
					}
				};
				Collections.sort(result, sort);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public List<Service_answerDTO> qnaselect(String id) {
		List<Service_answerDTO> list = null;
		try {
			list = smc.queryForList("myprofile.qnaselect", id);
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	public boolean deleteid(String id){
		
		try {
			smc.delete("myprofile.deleteid",id);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public List<MessageDTO> receivelist(String id){
		List<MessageDTO> list =null;
		try {
			list = smc.queryForList("myprofile.receivelist",id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	public List<MessageDTO> sendlist(String id){
		List<MessageDTO> list =null;
		try {
			list = smc.queryForList("myprofile.sendlist",id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
