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

public class Admin_ono_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_ono_selecttext = request.getParameter("admin_ono_selecttext");
		String catalogue = request.getParameter("catalogue");
		String del = request.getParameter("del");
		String send = request.getParameter("send");
		String admin_ono_view_answer_contents = request.getParameter("admin_ono_view_answer_contents");
		String admin_ono_view_upload_date = request.getParameter("admin_ono_view_upload_date");

		String admin_board_view_userid = request.getParameter("admin_board_view_userid");

		System.out.println("admin_ono_selecttext : " + request.getParameter("admin_ono_selecttext"));
		System.out.println("catalogue : " + request.getParameter("catalogue"));
		System.out.println("del : " + request.getParameter("del"));
		System.out
				.println("admin_ono_view_answer_contents : " + request.getParameter("admin_ono_view_answer_contents"));
		System.out.println("admin_ono_view_upload_date : " + request.getParameter("admin_ono_view_upload_date"));

		if (del == null) {

			if (admin_ono_selecttext == null && catalogue != null) {
				List<Service_answerDTO> adminonolist = null;
				adminonolist = dao.adminOnoSelectAll(catalogue);
				request.setAttribute("adminonolist", adminonolist);

			} else if (admin_ono_selecttext != null && catalogue != null) {
				List<Service_answerDTO> admionoselectlist = null;
				Service_answerDTO onoparam = new Service_answerDTO(admin_ono_selecttext, catalogue);

				admionoselectlist = dao.adminOnoSelectTitle(onoparam);
				request.setAttribute("adminonolist", admionoselectlist);

			}

		} else if (del != null) {

			boolean delflag = dao.adminOnoDel(admin_ono_view_upload_date);
			request.setAttribute("delflag", delflag);

		} else if (send != null) {
			boolean upflag=dao.adminOnoSend(admin_ono_view_answer_contents);
			request.setAttribute("upflag", upflag);
			
		}

		return mapping.findForward("success");
	}
}












