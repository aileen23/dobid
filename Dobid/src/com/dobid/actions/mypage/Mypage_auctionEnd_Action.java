package com.dobid.actions.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.model.Mypage_DAO;

public class Mypage_auctionEnd_Action extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String auction_board_num=request.getParameter("auction_board_num");
		
		Mypage_DAO dao =new Mypage_DAO();
		dao.auctionend(auction_board_num);
		System.out.println(auction_board_num);
		return  mapping.findForward("success");
	}
}
