package com.dobid.actions.reply.freedom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dobid.beans.Reply_freedomDTO;
import com.dobid.model.ReplyDAO;



public class UpdateAction extends Action{//DB수정요청
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		Reply_freedomDTO reply_freedom = new Reply_freedomDTO(
								Integer.parseInt(request.getParameter("no")),
								request.getParameter("name"),
								request.getParameter("content"),
	                            request.getParameter("num"),
	                            request.getParameter("nickname")
								);
		
		ReplyDAO dao = new ReplyDAO();
		   if(dao.update_freedom(reply_freedom)){
			   request.setAttribute("msg", "댓글수정성공!!");
		   }else{
			   request.setAttribute("msg", "댓글수정실패!!");
		   }
		   
		
		return mapping.findForward("success");
	}

}
