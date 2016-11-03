package com.dobid.model;

import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_ChargeDTO;
import com.dobid.beans.Auction_myAuctionDTO;
import com.dobid.beans.ChargeDTO;
import com.dobid.beans.ChargelistDTO;
import com.dobid.beans.DelidDTO;
import com.dobid.beans.MemberDTO;
import com.dobid.beans.MessageDTO;
import com.dobid.beans.Service_answerDTO;
import com.ibatis.sqlmap.client.SqlMapClient;

import iba.SqlMapConfig;

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
			smc.update("myprofile.update", dto);
			return "업데이트성공";
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	public List<AuctionDTO> basketSelect(String id,int start,int end) {
		List<AuctionDTO> list = null;
		try {
			Map<String, Object> map = new HashMap<>();
			map.put("start", start);
			map.put("end", end);
			map.put("member_id", id);
			list = smc.queryForList("myprofile.basketSelect", map);
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
					int price = list2.get(i).getCharge_will_amount();
					
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
	public boolean deleteid(DelidDTO delid){
		
		try {
			smc.update("myprofile.deleteid",delid);
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
	public void sendmsg(MessageDTO dto){
		try {
			smc.insert("myprofile.sendmsg",dto);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int countlist (String id){
		int num=0;
		try {
			num = (int) smc.queryForObject("myprofile.countlist",id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
	public void auctionend(String num){
		AuctionDTO dto = new AuctionDTO();
		try {
			Map<String,String> map = new HashMap<>();
			map.put("auction_board_num",num);
			map.put("bid_check","종료");
			smc.update("myprofile.auctionend",map); //경매중->경매종료
			
			dto= (AuctionDTO) smc.queryForObject("myprofile.endselect",num); //글 select
			int price=dto.getHighest_price();
			String buyid = dto.getHighest_price_id();
			String sellerid = dto.getSeller_id();
			
			Map<String,Object> map1 = new HashMap<>();
			map1.put("member_id", buyid);
			map1.put("charge_will_amount", price);
			map1.put("charge_type", dto.getTitle());
			map1.put("charge_type", dto.getTitle());
			map1.put("charge_check",0); //charge_check=0 사용
			smc.insert("myprofile.chargelistadd",map1); //구매기록남기기
			
			Map<String,Object> map2 = new HashMap<>();
			map2.put("member_id", sellerid);
			map2.put("charge_will_amount", price);
			map2.put("charge_type", dto.getTitle());
			map1.put("charge_check",1);//charge_check==1판매(충전)
			smc.insert("myprofile.chargelistadd",map2); //판매기록남기기
			
			Map<String,Object> map3 = new HashMap<>();
			map3.put("member_id", buyid);
			map3.put("charging_amount", price);
			smc.update("myprofile.auctionpay",map3);//구매금액차감
			
			Map<String,Object> map4 = new HashMap<>();
			map4.put("member_id", sellerid);
			map4.put("charging_amount", price);
			smc.update("myprofile.auctionsell",map4);//판매금액입금
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
