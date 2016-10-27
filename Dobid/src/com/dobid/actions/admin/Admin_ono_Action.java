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
import com.dobid.beans.Service_answerDTO;
import com.dobid.model.boardDAO;
import com.dobid.model.dobidDAO;

public class Admin_ono_Action extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_ono_selecttext = request.getParameter("admin_ono_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		

		String admin_board_view_userid = request.getParameter("admin_board_view_userid");

		System.out.println("admin_ono_selecttext : " + request.getParameter("admin_ono_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		

		System.out.println("admin_board_view_userid : " + request.getParameter("admin_board_view_userid"));

		if (del == null) {

			if (admin_ono_selecttext == null && catalogue !=null) {
				List<Service_answerDTO> adminonolist = null;
				adminonolist = dao.adminOnoSelectAll(catalogue);
				request.setAttribute("adminonolist", adminonolist);
				
				
			} else if (admin_ono_selecttext != null && catalogue !=null) {
				List<Service_answerDTO> admionoselectlist = null;
				Service_answerDTO onoparam = new Service_answerDTO(admin_ono_selecttext,catalogue);
				
				admionoselectlist = dao.adminOnoSelectTitle(onoparam);
				request.setAttribute("adminonolist", admionoselectlist);

			}else if (admin_ono_selecttext != null && catalogue.equals("notice")) {

				List<Admin_noticeDTO> adminnoticeselectlist = null;
				adminnoticeselectlist = dao.adminNoticeSelectTitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminnoticeselectlist);

			} else if (admin_ono_selecttext != null && catalogue.equals("free")) {

				List<Admin_freeDTO> adminfreeselectlist = null;
				adminfreeselectlist = dao.adminFreeSelectTitle(admin_boardselecttext);
				request.setAttribute("adminboardlist", adminfreeselectlist);

			}
		} else {
			if (admin_board_view_userid.equals("admin")) {

				boolean delflag=dao.adminNoticeBoardDel(admin_board_view_num);
				request.setAttribute("delflag", delflag);
			} else {
				boolean delflag=dao.adminFreeBoardDel(admin_board_view_num);
				request.setAttribute("delflag", delflag);
			}
		}

		return mapping.findForward("success");
	}
}