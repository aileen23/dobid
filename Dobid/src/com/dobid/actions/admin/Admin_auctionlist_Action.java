package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.model.boardDAO;

public class Admin_auctionlist_Action extends Action{

	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		
	
		String admin_auctionlist_selecttext = request.getParameter("admin_auctionlist_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String admin_auctionlist_view_num = request.getParameter("admin_auctionlist_view_num");
		String admin_board_view_userid = request.getParameter("admin_board_view_userid");
		
		
		
		
		System.out.println("admin_auctionlist_selecttext : " + request.getParameter("admin_auctionlist_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_auctionlist_view_num : " + request.getParameter("admin_auctionlist_view_num"));
		System.out.println("admin_board_view_userid : " + request.getParameter("admin_board_view_userid"));

		
		
		
		if (del == null) {

			if (admin_auctionlist_selecttext == null && catalogue == null) {
				List<Admin_noticeDTO> adminauction = null;
				adminauction = dao.adminNoticeSelectAll();
				request.setAttribute("adminauctionlist", adminauction);
				
			} else if (admin_auctionlist_selecttext == null && catalogue.equals("auction")) {
				List<Admin_noticeDTO> adminauction = null;
				adminauction = dao.adminNoticeSelectAll();
				request.setAttribute("adminauctionlist", adminauction);

			} else if (admin_auctionlist_selecttext == null && catalogue.equals("hotauction")) {

				List<Admin_freeDTO> adminhotauction = null;
				adminhotauction = dao.adminFreeSelectAll();
				request.setAttribute("adminauctionlist", adminhotauction);
				
			}else if (admin_auctionlist_selecttext == null && catalogue.equals("groupauction")) {

				List<Admin_freeDTO> admingroupauction = null;
				admingroupauction = dao.adminFreeSelectAll();
				request.setAttribute("adminauctionlist", admingroupauction);
				
			} else if (admin_auctionlist_selecttext != null && catalogue.equals("auction")) {

				List<Admin_noticeDTO> adminauctionselectlist = null;
				adminauctionselectlist = dao.adminNoticetitle(admin_auctionlist_selecttext);
				request.setAttribute("adminauctionlist", adminauctionselectlist);

			} else if (admin_auctionlist_selecttext != null && catalogue.equals("hotauction")) {

				List<Admin_freeDTO> adminhotauctionselectlist = null;
				adminhotauctionselectlist = dao.adminFreetitle(admin_auctionlist_selecttext);
				request.setAttribute("adminauctionlist", adminhotauctionselectlist);

			}else if (admin_auctionlist_selecttext != null && catalogue.equals("groupauction")) {

				List<Admin_freeDTO> admingroupauctionselectlist = null;
				admingroupauctionselectlist = dao.adminFreetitle(admin_auctionlist_selecttext);
				request.setAttribute("adminauctionlist", admingroupauctionselectlist);

			}
		} else {
			if (admin_board_view_userid.equals("admin")) {

				boolean delflag=dao.adminNoticeBoardDel(admin_auctionlist_view_num);
				request.setAttribute("delflag", delflag);
			} else {
				boolean delflag=dao.adminFreeBoardDel(admin_auctionlist_view_num);
				request.setAttribute("delflag", delflag);
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		return mapping.findForward("success");
	}
}
