package com.dobid.actions.service;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_reportDTO;
import com.dobid.model.ServiceDAO;

public class Customerservice_report_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String service_date = df.format(date);
		System.out.println("member_id");
		Service_reportDTO dto = new Service_reportDTO(
														request.getParameter("member_id"),
														request.getParameter("title"),
														request.getParameter("contents"),
														request.getParameter("image_path"),
														service_date);
		
			ServiceDAO dao = new ServiceDAO();
			dao.ServiceReport(dto);	
				
			
												
		
		return mapping.findForward("success");
	}

}
 