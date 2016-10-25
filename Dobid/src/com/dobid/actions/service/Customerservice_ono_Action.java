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
import com.dobid.model.ServiceDAO;


public class Customerservice_ono_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String service_date = df.format(date);
		System.out.println(request);
		System.out.println(request.getParameter("member_id"));
		System.out.println(request.getParameter("title"));
		
		Service_onoDTO dto = new Service_onoDTO(
												request.getParameter("member_id"),
												request.getParameter("title"),
												request.getParameter("categori"),
												request.getParameter("contents"),
												request.getParameter("image_path"),
												service_date);
			
			ServiceDAO dao = new ServiceDAO();
			dao.ServiceOno(dto);
			System.out.println(dao.ServiceOno(dto));
				
			
												
		
		return mapping.findForward("success");
	}

}
 