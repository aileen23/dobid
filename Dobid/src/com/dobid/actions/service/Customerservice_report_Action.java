package com.dobid.actions.service;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_onoDTO;
import com.dobid.beans.Service_reportDTO;
import com.dobid.model.dobidDAO;

public class Customerservice_report_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String service_date = df.format(date);
		
		Service_reportDTO dto = new Service_reportDTO();
			dto.setMember_id(request.getParameter("member_id"));
			dto.setTitle(request.getParameter("title"));
			dto.setContents(request.getParameter("contents"));
			dto.setImage_path(request.getParameter("image_path"));
			dto.setUpload_date(service_date);
			
			dobidDAO dao = new dobidDAO();
			dao.ServiceReport(dto);	
				
			
												
		
		return mapping.findForward("success");
	}

}
 