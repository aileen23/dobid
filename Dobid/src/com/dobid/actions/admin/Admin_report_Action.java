package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_answerDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.boardDAO;

public class Admin_report_Action extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("UTF-8");

		boardDAO dao = new boardDAO();

		String admin_report_selecttext = request.getParameter("admin_report_selecttext");
		String del = request.getParameter("del");
		String admin_report_view_upload_date = request.getParameter("admin_report_view_upload_date");
		
		System.out.println("admin_report_selecttext : " + request.getParameter("admin_report_selecttext"));
		System.out.println("del : " + request.getParameter("del"));
		System.out.println("admin_report_view_upload_date : " + request.getParameter("admin_report_view_upload_date"));

		if (del == null) {
			if (admin_report_selecttext.equals("")) {
				List<Service_reportDTO> adminreportlist = null;
				adminreportlist = dao.adminReportSelectAll();
				request.setAttribute("adminreportlist", adminreportlist);

			} else if (admin_report_selecttext != null) {
				List<Service_reportDTO> adminreportlist = null;
				adminreportlist = dao.adminReportSelect(admin_report_selecttext);
				request.setAttribute("adminreportlist", adminreportlist);

			}

		} else if (del != null) {

			boolean delflag = dao.adminReportDel(admin_report_view_upload_date);
			request.setAttribute("delflag", delflag);
			
		} 

		return mapping.findForward("success");
	}

}
