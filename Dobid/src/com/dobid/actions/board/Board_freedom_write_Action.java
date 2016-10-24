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
import com.dobid.model.boardDAO;


public class Board_freedom_write_Action extends Action{

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
	    Date date = new Date();
	    String board_date = df.format(date);
	    //request.getParameter("free_whiter_user")
	    System.out.println(request.getParameter("free_title"));
	    System.out.println(request.getParameter("free_contents"));
	    System.out.println(request.getParameter("free_file"));
	    FreeboardDTO dto = new FreeboardDTO(0,"아이디입니다.",
	    		request.getParameter("free_title"),request.getParameter("free_contents"),
	    		request.getParameter("free_file"),0,board_date);
		
		boardDAO dao = new boardDAO();
		dao.FreeBoardWrite(dto);
		
		return mapping.findForward("success");
	}
}
