package com.dobid.actions.board;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.FreeboardDTO;
import com.dobid.model.dobidDAO;

public class Board_freedom_write_Action extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
	    Date date = new Date();
	    String board_date = df.format(date);
	    FreeboardDTO dto = new FreeboardDTO(0,request.getParameter("free_whiter_user"),
	    		request.getParameter("free_title"),request.getParameter("free_contents"),
	    		request.getParameter("free_file"),0,board_date);
		
		dobidDAO dao = new dobidDAO();
		
		return mapping.findForward("success");
	}
}
