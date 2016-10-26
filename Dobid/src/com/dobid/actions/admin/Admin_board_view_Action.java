package com.dobid.actions.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Admin_freeDTO;
import com.dobid.beans.Admin_noticeDTO;
import com.dobid.model.boardDAO;

public class Admin_board_view_Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		
		request.setCharacterEncoding("UTF-8");
		String member_id= request.getParameter("member_id");
		System.out.println(member_id);
		Admin_noticeDTO noticeobject=null;
		Admin_freeDTO freeobject =null;
		if (member_id.equals("admin")) {
			
			noticeobject = new Admin_noticeDTO();
			boardDAO dao = new boardDAO();
			noticeobject = dao.adminNoticeSelect(member_id);
			request.setAttribute("adminviewobject", noticeobject);

		} else if (member_id!=null){
			freeobject = new Admin_freeDTO();
			boardDAO dao = new boardDAO();
			freeobject = dao.adminFreeSelect(member_id);
			request.setAttribute("adminviewobject", freeobject);
		}

		return mapping.findForward("success");
	}
}
