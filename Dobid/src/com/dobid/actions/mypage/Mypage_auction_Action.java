package com.dobid.actions.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.AuctionDTO;
import com.dobid.model.Mypage_DAO;

public class Mypage_auction_Action extends ActionForward {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String id= (String) request.getSession().getAttribute("logincheck");
		
		Mypage_DAO dao = new Mypage_DAO();
		
		List<AuctionDTO> list = dao.basketSelect(id);
		
		request.setAttribute("list", list);
		
		return  mapping.findForward("success");
	}
}
