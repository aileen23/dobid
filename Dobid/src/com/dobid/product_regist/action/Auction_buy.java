package com.dobid.product_regist.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.AuctionDTO;
import com.dobid.beans.Auction_participantDTO;
import com.dobid.beans.Auction_updateDTO;
import com.dobid.beans.Groupbuy_participantDTO;
import com.dobid.model.Product_registDAO;

public class Auction_buy extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String regist_date = df.format(date);
		
		//추후 세션값으로 받기위함.
				//MemberDTO dto = (MemberDTO) request.getSession().getAttribute("member");
		System.out.println(Integer.parseInt(request.getParameter("id"))+"asdadsadsad");
		Auction_participantDTO dto = new Auction_participantDTO(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("price")), "lgh3680@naver.com", regist_date, "no");
		System.out.println(dto.getAuction_board_num());
		System.out.println(dto.getBid_price_amount());
		System.out.println(dto.getBuyer_id());
		System.out.println(dto.getBid_date());
		System.out.println(dto.getBid_check());
		Product_registDAO dao = new Product_registDAO();
		boolean check = dao.auction_buy(dto);
		boolean update_check = dao.auction_update(new Auction_updateDTO(Integer.parseInt(request.getParameter("price")), "lgh3680@naver.com", Integer.parseInt(request.getParameter("id"))));
		ActionForward actionMapping = null;
		
		if(check == true && update_check == true){
			actionMapping = mapping.findForward("sueccess");
		}else {
			System.out.println("실패");
		}
		
		return actionMapping;
	}
	
}
