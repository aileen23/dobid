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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Customerservice_report_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String savePath="image\\upload_report";
		MultipartRequest mrequest = new MultipartRequest(request, request.getServletContext().getRealPath("")+savePath,
				                          300*1024*1024 ,"UTF-8", new DefaultFileRenamePolicy());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String service_date = df.format(date);
		
		System.out.println(mrequest.getParameter("member_id"));
		System.out.println("title: "+mrequest.getParameter("title"));
		System.out.println("image_path: "+mrequest.getParameter("image_path"));
		System.out.println("업로드 파일명: "+mrequest.getFilesystemName("image_path"));
		
		Service_reportDTO dto = new Service_reportDTO(
														mrequest.getParameter("member_id"),
														mrequest.getParameter("title"),
														mrequest.getParameter("contents"),
														//mrequest.getParameter("image_path"),
														savePath+"/"+mrequest.getFilesystemName("image_path"),// 경로와 파일명:  /image/upload/kwbg001.png
														service_date);
		
			ServiceDAO dao = new ServiceDAO();
			dao.ServiceReport(dto);	
				
			if (dao.ServiceReport(dto)) {
				
				return mapping.findForward("success");
			} else {
				
				return mapping.findForward("fail");
											
			}
	}

}
 