package com.dobid.actions.reply;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.ReplyDTO;
import com.dobid.model.ReplyDAO;



public class UpdateAction extends Action{//DB수정요청
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ReplyDTO reply = new ReplyDTO(
								Integer.parseInt(request.getParameter("no")),
								request.getParameter("name"),
								request.getParameter("content"));
		
		ReplyDAO dao = new ReplyDAO();
		   if(dao.update(reply)){
			   request.setAttribute("msg", "댓글수정성공!!");
		   }else{
			   request.setAttribute("msg", "댓글수정실패!!");
		   }
		
		return mapping.findForward("success");
	}

}
