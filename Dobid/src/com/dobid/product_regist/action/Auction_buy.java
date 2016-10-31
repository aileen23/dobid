package com.dobid.product_regist.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Auction_participantDTO;
import com.dobid.beans.Auction_updateDTO;
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
		String user_id = (String) request.getSession().getAttribute("logincheck");

		Auction_participantDTO dto = new Auction_participantDTO(Integer.parseInt(request.getParameter("id")), Integer.parseInt(request.getParameter("price")), user_id, regist_date, "no");

		Product_registDAO dao = new Product_registDAO();
		boolean check = dao.auction_buy(dto);
		boolean update_check = dao.auction_update(new Auction_updateDTO(Integer.parseInt(request.getParameter("price")), user_id, Integer.parseInt(request.getParameter("id"))));
		ActionForward actionMapping = null;
		
		if(check == true && update_check == true){
			actionMapping = mapping.findForward("sueccess");
		}else {
			actionMapping = mapping.findForward("fail");
		}
		
		return actionMapping;
	}
	
}
