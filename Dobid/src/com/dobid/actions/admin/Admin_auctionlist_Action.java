package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_auctionDTO;
import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_groupBuyDTO;
import com.dobid.beans.Admin_hotAuctionDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.model.boardDAO;

public class Admin_auctionlist_Action extends Action{

	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		
	
		String admin_auction_selecttext = request.getParameter("admin_auction_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String admin_auction_view_num = request.getParameter("admin_auction_view_num");
		String admin_auction_view_userid = request.getParameter("admin_auction_view_userid");
		String admin_auction_catalogue = request.getParameter("admin_auction_catalogue");
		
		
		
		System.out.println("admin_auction_selecttext : " + request.getParameter("admin_auction_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_auction_view_num : " + request.getParameter("admin_auction_view_num"));
		System.out.println("admin_auction_view_userid : " + request.getParameter("admin_auction_view_userid"));
		System.out.println("admin_auction_catalogue : " + request.getParameter("admin_auction_catalogue"));

		
		
		
		if (del == null) {

			if (admin_auction_selecttext == null && catalogue == null) {
				List<Admin_auctionDTO> adminauction = null;
				adminauction = dao.adminAuctionSelectAll();
				request.setAttribute("adminauctionlist", adminauction);
				
			} else if (admin_auction_selecttext == null && catalogue.equals("auction")) {
				List<Admin_auctionDTO> adminauction = null;
				adminauction = dao.adminAuctionSelectAll();
				request.setAttribute("adminauctionlist", adminauction);

			} else if (admin_auction_selecttext == null && catalogue.equals("hotauction")) {

				List<Admin_hotAuctionDTO> adminhotauction = null;
				adminhotauction = dao.adminHotAuctionSelectAll();
				request.setAttribute("adminauctionlist", adminhotauction);
				
			}else if (admin_auction_selecttext == null && catalogue.equals("groupauction")) {

				List<Admin_groupBuyDTO> admingroupauction = null;
				admingroupauction = dao.adminGroupAuctionSelectAll();
				request.setAttribute("adminauctionlist", admingroupauction);
				
			} else if (admin_auction_selecttext != null && catalogue.equals("auction")) {

				List<Admin_auctionDTO> adminauctionselectlist = null;
				adminauctionselectlist = dao.adminAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", adminauctionselectlist);

			} else if (admin_auction_selecttext != null && catalogue.equals("hotauction")) {

				List<Admin_hotAuctionDTO> adminhotauctionselectlist = null;
				adminhotauctionselectlist = dao.adminHotAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", adminhotauctionselectlist);

			}else if (admin_auction_selecttext != null && catalogue.equals("groupauction")) {

				List<Admin_groupBuyDTO> admingroupauctionselectlist = null;
				admingroupauctionselectlist = dao.adminGroupAucionSelectTitle(admin_auction_selecttext);
				request.setAttribute("adminauctionlist", admingroupauctionselectlist);

			}
		} else {
			if (admin_auction_catalogue.equals("groupauction")) {
				
				boolean delflag=dao.adminGroupActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);
				
			} else if(admin_auction_catalogue.equals("auction")){
				
				boolean delflag=dao.adminActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);
				
			}else if(admin_auction_catalogue.equals("hotauction")){
				boolean delflag=dao.adminHotActionDel(admin_auction_view_num);
				request.setAttribute("delflag", delflag);
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		return mapping.findForward("success");
	}
}
