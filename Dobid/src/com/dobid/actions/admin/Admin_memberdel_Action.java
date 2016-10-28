package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.MemberDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_memberdel_Action extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		
		boardDAO dao = new boardDAO();
		
	

		String admin_memberdel_selecttext = request.getParameter("admin_memberdel_selecttext");
		String admin_memberdel_view_member_id = request.getParameter("admin_memberdel_view_member_id");
		String del = request.getParameter("del");
	
		
		System.out.println("admin_memberdel_selecttext : " + request.getParameter("admin_memberdel_selecttext"));
		System.out.println("admin_memberdel_view_member_id : " + request.getParameter("admin_memberdel_view_member_id"));
		System.out.println("del : " + request.getParameter("del"));


		if (del == null) {
			if (admin_memberdel_selecttext==null) {
				List<MemberDTO> adminmemberdellist = null;
				adminmemberdellist = dao.adminMemberdelSelectAll();
				request.setAttribute("adminmemberdellist", adminmemberdellist);

			} else if (admin_memberdel_selecttext!=null) {
				List<MemberDTO> adminmemberdellist = null;
				adminmemberdellist = dao.adminMemberdelSelect(admin_memberdel_selecttext);
				request.setAttribute("adminmemberdellist", adminmemberdellist);

			}

		} else if (del != null) {

			boolean delflag = dao.adminMemberdelDel(admin_memberdel_view_member_id);
			request.setAttribute("delflag", delflag);
			
		} 

		return mapping.findForward("success");
	}
	
	
}
