package com.dobid.actions.service;



import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Service_answerDTO;
import com.dobid.model.ServiceDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class Customerservice_ono_Action extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
			
		String savePath="image\\upload_ono";
		MultipartRequest mrequest = new MultipartRequest(request, request.getServletContext().getRealPath("")+savePath,
				                          300*1024*1024 ,"UTF-8", new DefaultFileRenamePolicy());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		String service_date = df.format(date);
		
		Service_answerDTO dto = new Service_answerDTO(
												mrequest.getParameter("member_id"),
												mrequest.getParameter("title"),
												mrequest.getParameter("categori"),
												mrequest.getParameter("contents"),
												//mrequest.getParameter("image_path"),
												savePath+"/"+mrequest.getFilesystemName("image_path"),// 寃쎈��� ���쇰�:  /image/upload/kwbg001.png
												service_date);
			
			ServiceDAO dao = new ServiceDAO();
			boolean flag = dao.ServiceOno(dto);
			
			
			
			
			if (flag == false) {
				return mapping.findForward("fail");
			} else {
				return mapping.findForward("success");
											
			}
			
		
	}

}
 
