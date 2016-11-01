package com.dobid.actions.admin;

import java.text.SimpleDateFormat;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.NoticeboardDTO;
import com.dobid.model.boardDAO;

public class Admin_noticeboard_write_Action extends Action{

	
	
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
	    NoticeboardDTO dto = new NoticeboardDTO(0,(String)request.getSession().getAttribute("logincheck"),
	    		request.getParameter("free_title"),request.getParameter("free_contents"),
	    		request.getParameter("free_file"),0,board_date);
		
		boardDAO dao = new boardDAO();
		dao.noticeBoardWrite(dto);
		
		return mapping.findForward("success");
	}
}