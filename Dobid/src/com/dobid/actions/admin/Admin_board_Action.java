package com.dobid.actions.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;
import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Admin_board_Action extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		

		request.setCharacterEncoding("UTF-8");
		
		boardDAO dao = new boardDAO();
		
		

		List<NoticeboardDTO> noticelist = null;
		noticelist = dao.NoticeSelectAll();
		request.setAttribute("adminboardlist", noticelist);


		
		String admin_boardselecttext = (String)request.getParameter("admin_boardselecttext");
		String catalogue = request.getParameter("catalogue");
		
		System.out.println(request.getParameter("admin_boardselecttext"));
		System.out.println(request.getParameter("catalogue"));
		
		if(admin_boardselecttext!=null && catalogue.equals("notice")){
			
			noticelist = dao.NoticeSelectAll();
			request.setAttribute("adminboardlist", noticelist);
			
		}else if(admin_boardselecttext==null && catalogue.equals("free")){
			
			List<FreeboardDTO> freelist = null;
			freelist = dao.FreeSelectAll();
			request.setAttribute("adminboardlist", freelist);
		}else if (admin_boardselecttext!=null && catalogue.equals("notice")) {
			
			List<NoticeboardDTO> noticeselectlist = null;
			noticeselectlist=dao.NoticeSelectTitle(admin_boardselecttext);
			request.setAttribute("adminboardlist", noticeselectlist);
	
		} else if (admin_boardselecttext!=null && catalogue.equals("free")) {
			
			List<FreeboardDTO> freeselectlist = null;
			freeselectlist=dao.FreeSelectAllTitle(admin_boardselecttext);
			request.setAttribute("adminboardlist", freeselectlist);
			
			
		} 

		
		
		
		return mapping.findForward("success");
	}
}
