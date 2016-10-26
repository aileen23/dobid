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

public class Admin_board_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_boardselecttext = request.getParameter("admin_boardselecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String admin_board_view_num = request.getParameter("admin_board_view_num");
		String admin_board_view_userid = request.getParameter("admin_board_view_userid");

		System.out.println("admin_boardselecttext : " + request.getParameter("admin_boardselecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_board_view_num : " + request.getParameter("admin_board_view_num"));
		System.out.println("admin_board_view_userid : " + request.getParameter("admin_board_view_userid"));

		if (del.equals("del")) {
			if (admin_board_view_userid.equals("admin")) {
				dao.adminNoticeBoardDel(admin_board_view_num);
			} else {
				dao.adminFreeBoardDel(admin_board_view_num);
			}
		} else {

			if (admin_boardselecttext == null && catalogue == null) {
				List<Admin_noticeDTO> adminnoticelist = null;
				adminnoticelist = dao.adminNoticeSelectAll();
				request.setAttribute("adminboardlist", adminnoticelist);
			} else if (admin_boardselecttext == null && catalogue.equals("notice")) {
				List<Admin_noticeDTO> adminnoticelist = null;
				adminnoticelist = dao.adminNoticeSelectAll();
				request.setAttribute("adminboardlist", adminnoticelist);

			} else if (admin_boardselecttext == null && catalogue.equals("free")) {

				List<Admin_freeDTO> adminfreelist = null;
				adminfreelist = dao.adminFreeSelectAll();
				request.setAttribute("adminboardlist", adminfreelist);
			} else if (admin_boardselecttext != null && catalogue.equals("notice")) {

				List<Admin_noticeDTO> adminnoticeselectlist = null;
				adminnoticeselectlist = dao.adminNoticetitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminnoticeselectlist);

			} else if (admin_boardselecttext != null && catalogue.equals("free")) {

				List<Admin_freeDTO> adminfreeselectlist = null;
				adminfreeselectlist = dao.adminFreetitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminfreeselectlist);

			}
		}

		return mapping.findForward("success");
	}
}
