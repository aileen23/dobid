package com.dobid.actions.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Auction_myAuctionDTO;
import com.dobid.beans.ChargelistDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_charge_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String id= (String) request.getSession().getAttribute("logincheck");
		
		Mypage_DAO dao = new Mypage_DAO();
		
		List<ChargelistDTO> list = dao.chargeSelect(id);
		int Charging_amount = dao.select(id).getCharging_amount();
		
		request.setAttribute("list", list);
		request.setAttribute("Charging_amount", Charging_amount);
		
		return  mapping.findForward("success");
	}
}
