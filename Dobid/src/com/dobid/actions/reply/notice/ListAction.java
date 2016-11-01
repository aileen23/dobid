package com.dobid.actions.reply.notice;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_freedomDTO;
import com.dobid.beans.Reply_noticeDTO;
import com.dobid.model.ReplyDAO;
import com.dobid.util.Util;
import com.sun.glass.ui.Size;

import oracle.net.aso.i;



public class ListAction extends Action{//목록출력 요청

	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int num = Integer.parseInt(request.getParameter("num"));
		
	   ReplyDAO dao = new ReplyDAO();
	   List<Reply_noticeDTO>  list =  dao.findAll_notice(num);
	   
	   
	   
	   
	    request.setAttribute("list", list);//list);
	   return mapping.findForward("success");
	}//execute
}








